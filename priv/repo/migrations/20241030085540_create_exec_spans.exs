defmodule Tasker.Repo.Migrations.CreateExecSpans do
  use Ecto.Migration

  def change do
    create table(:exec_spans, primary_key: false) do
      add :id, :binary_id, primary_key: true, autogenerate: true
      add :span_start, :naive_datetime
      add :span_end, :naive_datetime
      add :task_time_id, references(:task_times, on_delete: :nothing, type: :binary_id)

      timestamps(type: :utc_datetime)
    end

    create index(:exec_spans, [:task_time_id])
  end
end
