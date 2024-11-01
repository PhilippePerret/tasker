# Table qui permet d’enregistrer, pour une tâche, par le biais
# de son TaskTime, des périodes de temps où la tâche a été 
# travaillée (span = intevalle de temps en anglais).
defmodule Tasker.Tasks.TaskTime.ExecSpan do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "exec_spans" do
    field :span_start, :naive_datetime
    field :span_end, :naive_datetime
    belongs_to :task_time, Tasker.Tasks.TaskTime, type: :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(exec_span, attrs) do
    exec_span
    |> cast(attrs, [:id, :task_time_id, :span_start, :span_end])
    |> validate_required([:id, :task_time_id, :span_start, :span_end])
  end
end
