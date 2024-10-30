defmodule Tasker.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "tasks" do
    field :worker_id, :id
    belongs_to :project_id, Tasker.Projects.Project, type: :binary_id
    has_one :prev_task_id, Tasker.Tasks.Task, type: :binary_id
    has_one :statut_id, Tasker.Tasks.TaskStatut
    has_one :task_time_id, Tasker.Tasks.TaskTime, type: :binary_id
    has_one :task_spec_id, Tasker.Tasks.TaskSpec, type: :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:id])
    |> validate_required([:id])
  end
end
