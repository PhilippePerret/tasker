defmodule Tasker.Tasks.TaskStatut do
  use Ecto.Schema
  import Ecto.Changeset


  schema "task_statuts" do
    field :name, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(task_statut, attrs) do
    task_statut
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
