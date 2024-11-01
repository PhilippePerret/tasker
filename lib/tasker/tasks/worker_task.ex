defmodule Tasker.Tasks.WorkerTask do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "workers_tasks" do
    belongs_to :worker, Tasker.Worker, type: :binary_id
    belongs_to :task, Tasker.Tasks.Task, type: :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(worker_task, attrs) do
    worker_task
    |> cast(attrs, [:worker_id, :task_id])
    |> validate_required([:worker_id, :task_id])
  end
end
