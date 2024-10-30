defmodule Tasker.Repo.Migrations.CreateTaskStatuts do
  use Ecto.Migration

  def change do
    create table(:task_statuts) do
      add :name, :string, null: false

      timestamps(type: :utc_datetime)
    end
  end
end
