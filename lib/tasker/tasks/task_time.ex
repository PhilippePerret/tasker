defmodule Tasker.Tasks.TaskTime do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "task_times" do
    field :duration, :integer
    field :should_start_at, :naive_datetime
    field :should_end_at, :naive_datetime
    field :recurrence, :string
    field :execution_duration, :integer
    belongs_to :task, Tasker.Tasks.Task, type: :binary_id
    has_many :exec_spans, Tasker.Tasks.TaskTime.ExecSpan

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(task_time, attrs) do
    task_time
    |> cast(attrs, [:id, :task_id, :duration, :should_start_at, :should_end_at, :recurrence, :execution_duration])
    |> validate_required([:id, :task_id, :duration, :should_start_at, :should_end_at, :recurrence, :execution_duration])
  end
end
