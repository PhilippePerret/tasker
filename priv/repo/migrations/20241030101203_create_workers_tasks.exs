defmodule Tasker.Repo.Migrations.CreateWorkersTasks do
  use Ecto.Migration

  def change do
    create table(:workers_tasks, primary_key: false) do
      add :id, :binary_id, primary_key: true, autogenerate: true
      add :worker_id, references(:workers, on_delete: :nothing, type: :binary_id)
      add :task_id, references(:tasks, on_delete: :nothing, type: :binary_id)

      timestamps(type: :utc_datetime)
    end

    create index(:workers_tasks, [:worker_id])
    create index(:workers_tasks, [:task_id])
  end
end
