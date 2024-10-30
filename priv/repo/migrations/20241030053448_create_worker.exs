defmodule Tasker.Repo.Migrations.CreateWorker do
  use Ecto.Migration

  def change do
    create table(:workers, primary_key: false) do
      add :id, :binary_id, primary_key: true, autogenerate: true
      add :nickname, :string
    end

    unique_index(:workers, [:nickname])
  end
end
