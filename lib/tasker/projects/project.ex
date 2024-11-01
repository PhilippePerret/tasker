defmodule Tasker.Projects.Project do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "projects" do
    field :name, :string
    field :description, :string
    field :start_at, :naive_datetime
    field :expected_at, :naive_datetime
    belongs_to :location, Tasker.Projects.Location

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:id, :name, :start_at, :expected_at, :description])
    |> validate_required([:id, :name, :start_at, :expected_at, :description])
  end
end
