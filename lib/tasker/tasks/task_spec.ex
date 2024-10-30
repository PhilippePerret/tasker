defmodule Tasker.Tasks.TaskSpec do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "task_specs" do
    field :description, :string
    field :titre, :string
    field :contenu, :text
    field :note, :string
    field :script, :string
    belongs_to :task_id, Tasker.Tasks.Task, type: :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(task_spec, attrs) do
    task_spec
    |> cast(attrs, [:id, :titre, :content, :description, :note, :script])
    |> validate_required([:id, :titre, :content, :description, :note, :script])
  end
end