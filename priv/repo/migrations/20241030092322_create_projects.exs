defmodule Tasker.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects, primary_key: false) do
      add :id, :binary_id, primary_key: true, autogenerate: true
      add :name, :string, null: false
      add :started_at, :naive_datetime
      add :expected_at, :naive_datetime
      add :description, :text
      add :location_id, references(:locations, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end
  end
end
