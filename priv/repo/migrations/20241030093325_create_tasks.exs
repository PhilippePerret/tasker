defmodule Tasker.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks, primary_key: false) do
      add :id, :binary_id, primary_key: true, autogenerate: true
      add :project_id, references(:projects, on_delete: :nothing, type: :binary_id)
      add :prev_task_id, references(:tasks, on_delete: :nothing, type: :binary_id)
      add :statut_id, references(:task_statuts, on_delete: :delete_all)
      add :task_time_id, references(:task_times, on_delete: :delete_all, type: :binary_id)

      timestamps(type: :utc_datetime)
    end

    create index(:tasks, [:project_id])
    create index(:tasks, [:prev_task_id])
    create index(:tasks, [:statut_id])
    create index(:tasks, [:task_time_id])
  end
end
