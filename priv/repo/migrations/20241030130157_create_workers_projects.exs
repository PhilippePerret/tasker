defmodule Tasker.Repo.Migrations.CreateWorkersProjects do
  use Ecto.Migration

  def change do
    create table(:workers_projects, primary_key: false) do
      add :id, :binary_id, primary_key: true, autogenerate: true
      add :project_id, references(:projects, on_delete: :nothing, type: :binary_id)
      add :worker_id, references(:workers, on_delete: :nothing, type: :binary_id)
      add :worker_role, :integer

      timestamps(type: :utc_datetime)
    end

    create index(:workers_projects, [:project_id])
    create index(:workers_projects, [:worker_id])
  end
end
