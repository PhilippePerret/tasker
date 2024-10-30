defmodule Tasker.Repo.Migrations.CreateTaskSpecs do
  use Ecto.Migration

  def change do
    create table(:task_specs, primary_key: false) do
      add :id, :binary_id, primary_key: true, autogenerate: true
      add :titre, :string, null: false
      add :contenu, :text
      add :description, :text
      add :note, :text
      add :script, :string
      add :task_id, references(:tasks, on_delete: :nothing, type: :binary_id)

      timestamps(type: :utc_datetime)
    end

    create index(:task_specs, [:task_id])
  end
end