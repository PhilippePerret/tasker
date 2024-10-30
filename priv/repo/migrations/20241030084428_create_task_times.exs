defmodule Tasker.Repo.Migrations.CreateTaskTimes do
  use Ecto.Migration

  def change do
    create table(:task_times, primary_key: false) do
      add :id, :binary_id, primary_key: true, autogenerate: true
      add :duration, :integer
      add :should_start_at, :naive_datetime
      add :should_end_at, :naive_datetime
      add :recurrence, :string
      add :execution_duration, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
