defmodule Tasker.Task.TaskTime do
  @moduledoc """
  The TaskTime context.
  """

  import Ecto.Query, warn: false
  alias Tasker.Repo

  alias Tasker.Tasks.TaskTime.ExecSpan

  @doc """
  Returns the list of exec_spans.

  ## Examples

      iex> list_exec_spans()
      [%ExecSpan{}, ...]

  """
  def list_exec_spans do
    Repo.all(ExecSpan)
  end

  @doc """
  Gets a single exec_span.

  Raises `Ecto.NoResultsError` if the Exec span does not exist.

  ## Examples

      iex> get_exec_span!(123)
      %ExecSpan{}

      iex> get_exec_span!(456)
      ** (Ecto.NoResultsError)

  """
  def get_exec_span!(id), do: Repo.get!(ExecSpan, id)

  @doc """
  Creates a exec_span.

  ## Examples

      iex> create_exec_span(%{field: value})
      {:ok, %ExecSpan{}}

      iex> create_exec_span(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_exec_span(task_time, attrs \\ %{}) do
    task_time
    |> Ecto.build_assoc(:exec_spans)
    |> ExecSpan.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a exec_span.

  ## Examples

      iex> update_exec_span(exec_span, %{field: new_value})
      {:ok, %ExecSpan{}}

      iex> update_exec_span(exec_span, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_exec_span(%ExecSpan{} = exec_span, attrs) do
    exec_span
    |> ExecSpan.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a exec_span.

  ## Examples

      iex> delete_exec_span(exec_span)
      {:ok, %ExecSpan{}}

      iex> delete_exec_span(exec_span)
      {:error, %Ecto.Changeset{}}

  """
  def delete_exec_span(%ExecSpan{} = exec_span) do
    Repo.delete(exec_span)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking exec_span changes.

  ## Examples

      iex> change_exec_span(exec_span)
      %Ecto.Changeset{data: %ExecSpan{}}

  """
  def change_exec_span(%ExecSpan{} = exec_span, attrs \\ %{}) do
    ExecSpan.changeset(exec_span, attrs)
  end
end
