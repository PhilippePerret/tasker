defmodule Tasker.Tasks do
  @moduledoc """
  The Task context.
  """

  import Ecto.Query, warn: false
  alias Tasker.Repo

  alias Tasker.Tasks.TaskTime

  @doc """
  Returns the list of task_times.

  ## Examples

      iex> list_task_times()
      [%TaskTime{}, ...]

  """
  def list_task_times do
    Repo.all(TaskTime)
  end

  @doc """
  Gets a single task_time.

  Raises `Ecto.NoResultsError` if the Task time does not exist.

  ## Examples

      iex> get_task_time!(123)
      %TaskTime{}

      iex> get_task_time!(456)
      ** (Ecto.NoResultsError)

  """
  def get_task_time!(id), do: Repo.get!(TaskTime, id)

  @doc """
  Creates a task_time.

  ## Examples

      iex> create_task_time(%{field: value})
      {:ok, %TaskTime{}}

      iex> create_task_time(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_task_time(attrs \\ %{}) do
    %TaskTime{}
    |> TaskTime.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a task_time.

  ## Examples

      iex> update_task_time(task_time, %{field: new_value})
      {:ok, %TaskTime{}}

      iex> update_task_time(task_time, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_task_time(%TaskTime{} = task_time, attrs) do
    task_time
    |> TaskTime.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a task_time.

  ## Examples

      iex> delete_task_time(task_time)
      {:ok, %TaskTime{}}

      iex> delete_task_time(task_time)
      {:error, %Ecto.Changeset{}}

  """
  def delete_task_time(%TaskTime{} = task_time) do
    Repo.delete(task_time)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking task_time changes.

  ## Examples

      iex> change_task_time(task_time)
      %Ecto.Changeset{data: %TaskTime{}}

  """
  def change_task_time(%TaskTime{} = task_time, attrs \\ %{}) do
    TaskTime.changeset(task_time, attrs)
  end

  alias Tasker.Tasks.TaskStatut

  @doc """
  Returns the list of task_statuts.

  ## Examples

      iex> list_task_statuts()
      [%TaskStatut{}, ...]

  """
  def list_task_statuts do
    Repo.all(TaskStatut)
  end

  @doc """
  Gets a single task_statut.

  Raises `Ecto.NoResultsError` if the Task statut does not exist.

  ## Examples

      iex> get_task_statut!(123)
      %TaskStatut{}

      iex> get_task_statut!(456)
      ** (Ecto.NoResultsError)

  """
  def get_task_statut!(id), do: Repo.get!(TaskStatut, id)

  @doc """
  Creates a task_statut.

  ## Examples

      iex> create_task_statut(%{field: value})
      {:ok, %TaskStatut{}}

      iex> create_task_statut(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_task_statut(attrs \\ %{}) do
    %TaskStatut{}
    |> TaskStatut.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a task_statut.

  ## Examples

      iex> update_task_statut(task_statut, %{field: new_value})
      {:ok, %TaskStatut{}}

      iex> update_task_statut(task_statut, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_task_statut(%TaskStatut{} = task_statut, attrs) do
    task_statut
    |> TaskStatut.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a task_statut.

  ## Examples

      iex> delete_task_statut(task_statut)
      {:ok, %TaskStatut{}}

      iex> delete_task_statut(task_statut)
      {:error, %Ecto.Changeset{}}

  """
  def delete_task_statut(%TaskStatut{} = task_statut) do
    Repo.delete(task_statut)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking task_statut changes.

  ## Examples

      iex> change_task_statut(task_statut)
      %Ecto.Changeset{data: %TaskStatut{}}

  """
  def change_task_statut(%TaskStatut{} = task_statut, attrs \\ %{}) do
    TaskStatut.changeset(task_statut, attrs)
  end

  alias Tasker.Tasks.Task

  @doc """
  Returns the list of tasks.

  ## Examples

      iex> list_tasks()
      [%Task{}, ...]

  """
  def list_tasks do
    Repo.all(Task)
  end

  @doc """
  Gets a single task.

  Raises `Ecto.NoResultsError` if the Task does not exist.

  ## Examples

      iex> get_task!(123)
      %Task{}

      iex> get_task!(456)
      ** (Ecto.NoResultsError)

  """
  def get_task!(id), do: Repo.get!(Task, id)

  @doc """
  Creates a task.

  ## Examples

      iex> create_task(%{field: value})
      {:ok, %Task{}}

      iex> create_task(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_task(attrs \\ %{}) do
    %Task{}
    |> Task.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a task.

  ## Examples

      iex> update_task(task, %{field: new_value})
      {:ok, %Task{}}

      iex> update_task(task, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_task(%Task{} = task, attrs) do
    task
    |> Task.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a task.

  ## Examples

      iex> delete_task(task)
      {:ok, %Task{}}

      iex> delete_task(task)
      {:error, %Ecto.Changeset{}}

  """
  def delete_task(%Task{} = task) do
    Repo.delete(task)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking task changes.

  ## Examples

      iex> change_task(task)
      %Ecto.Changeset{data: %Task{}}

  """
  def change_task(%Task{} = task, attrs \\ %{}) do
    Task.changeset(task, attrs)
  end

  alias Tasker.Tasks.TaskSpec

  @doc """
  Returns the list of task_specs.

  ## Examples

      iex> list_task_specs()
      [%TaskSpec{}, ...]

  """
  def list_task_specs do
    Repo.all(TaskSpec)
  end

  @doc """
  Gets a single task_spec.

  Raises `Ecto.NoResultsError` if the Task spec does not exist.

  ## Examples

      iex> get_task_spec!(123)
      %TaskSpec{}

      iex> get_task_spec!(456)
      ** (Ecto.NoResultsError)

  """
  def get_task_spec!(id), do: Repo.get!(TaskSpec, id)

  @doc """
  Creates a task_spec.

  ## Examples

      iex> create_task_spec(%{field: value})
      {:ok, %TaskSpec{}}

      iex> create_task_spec(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_task_spec(attrs \\ %{}) do
    %TaskSpec{}
    |> TaskSpec.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a task_spec.

  ## Examples

      iex> update_task_spec(task_spec, %{field: new_value})
      {:ok, %TaskSpec{}}

      iex> update_task_spec(task_spec, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_task_spec(%TaskSpec{} = task_spec, attrs) do
    task_spec
    |> TaskSpec.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a task_spec.

  ## Examples

      iex> delete_task_spec(task_spec)
      {:ok, %TaskSpec{}}

      iex> delete_task_spec(task_spec)
      {:error, %Ecto.Changeset{}}

  """
  def delete_task_spec(%TaskSpec{} = task_spec) do
    Repo.delete(task_spec)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking task_spec changes.

  ## Examples

      iex> change_task_spec(task_spec)
      %Ecto.Changeset{data: %TaskSpec{}}

  """
  def change_task_spec(%TaskSpec{} = task_spec, attrs \\ %{}) do
    TaskSpec.changeset(task_spec, attrs)
  end
end
