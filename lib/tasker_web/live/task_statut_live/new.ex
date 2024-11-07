defmodule TaskerWeb.TaskStatutLive.New do
  use TaskerWeb, :live_view

  alias Tasker.Tasks
  alias Tasker.Tasks.Task

  def mount(_params, _session, socket) do
    changeset = %{} # Tasks.TaskStatut.changeset(%Tasks.TaskStatut{})
    # changeset = Tasks.TaskStatut.changeset(%Tasks.TaskStatut{})
    {:ok, assign(socket, changeset: changeset)}
  end

  def handle_event("save", %{"task_statut" => task_statut_params}, socket) do
    case Tasks.create_task_statut(task_statut_params) do
      {:ok, _task} ->
        {:noreply, 
          socket
          |> put_flash(:info, "Statut de tâche créé avec succès !")
          |> push_redirect(to: "/")
        }
      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end

end
