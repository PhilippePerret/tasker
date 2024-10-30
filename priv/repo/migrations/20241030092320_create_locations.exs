defmodule Tasker.Repo.Migrations.CreateLocations do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :name, :string, null: false

      timestamps(type: :utc_datetime)
    end
  end
end