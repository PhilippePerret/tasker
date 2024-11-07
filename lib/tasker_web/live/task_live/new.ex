defmodule TaskerWeb.TaskLive.New do
  use TaskerWeb, :live_view

  alias Tasker.Tasks
  alias Tasker.Tasks.Task

  # import Phoenix.HTML.Form
  # import TaskerWeb.ErrorHelpers # Supprimer comme 

  def mount(_params, _session, socket) do
    changeset = Tasks.change_task(%Task{})
    {:ok, assign(socket, changeset: changeset)}
  end

  def handle_event("validate", %{"task" => task_params}, socket) do
    changeset = 
      %Task{}
      |> Tasks.change_task(task_params)
      |> Map.put(:action, :validate)

    {:noreply, assign(socket, changeset: changeset)}
  end

  def handle_event("save", %{"task" => task_params}, socket) do
    case Tasks.create_task(task_params) do
      {:ok, _task} ->
        {:noreply, 
          socket
          |> put_flash(:info, "Tâche créée avec succès !")
          |> push_redirect(to: "/tasks")}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end
end
