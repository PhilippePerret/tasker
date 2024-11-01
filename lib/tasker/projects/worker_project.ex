defmodule Tasker.Projects.WorkerProject do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "workers_projects" do
    belongs_to :project, Tasker.Projects.Project
    belongs_to :worker, Tasker.Worker
    field :worker_role, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(worker_project, attrs) do
    worker_project
    |> cast(attrs, [:project_id, :worker_id, :worker_role])
    |> validate_required([:project_id, :worker_id, :role])
  end
end
