defmodule Tasker.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "tasks" do
    has_one :statut, Tasker.Tasks.TaskStatut
    belongs_to :project, Tasker.Projects.Project, type: :binary_id
    has_one :prev_task, Tasker.Tasks.Task
    has_one :task_time, Tasker.Tasks.TaskTime
    has_one :task_spec, Tasker.Tasks.TaskSpec
    has_many :worker_task, Tasker.Tasks.WorkerTask

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:id, :project_id, :statut])
    |> validate_required([:id, :project_id, :statut])
  end
end
