defmodule Tasker.Repo.Migrations.WorkerBelongsToUser do
  use Ecto.Migration

  def change do
    alter table(:workers) do
      add :user_id, references(:users, type: :binary_id)
    end
  end
end
