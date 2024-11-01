defmodule Tasker.Projects.Location do
  use Ecto.Schema
  import Ecto.Changeset


  schema "locations" do
    field :name, :string
    has_many :projects, Tasker.Projects.Project

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(location, attrs) do
    location
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
