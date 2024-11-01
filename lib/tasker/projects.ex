defmodule Tasker.Projects do
  @moduledoc """
  The Projects context.
  """

  import Ecto.Query, warn: false
  alias Tasker.Repo

  alias Tasker.Projects.Project

  @doc """
  Returns the list of projects.

  ## Examples

      iex> list_projects()
      [%Project{}, ...]

  """
  def list_projects do
    Repo.all(Project)
  end

  @doc """
  Gets a single project.

  Raises `Ecto.NoResultsError` if the Project does not exist.

  ## Examples

      iex> get_project!(123)
      %Project{}

      iex> get_project!(456)
      ** (Ecto.NoResultsError)

  """
  def get_project!(id), do: Repo.get!(Project, id)

  @doc """
  Creates a project.

  ## Examples

      iex> create_project(%{field: value})
      {:ok, %Project{}}

      iex> create_project(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_project(attrs \\ %{}) do
    %Project{}
    |> Project.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a project.

  ## Examples

      iex> update_project(project, %{field: new_value})
      {:ok, %Project{}}

      iex> update_project(project, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_project(%Project{} = project, attrs) do
    project
    |> Project.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a project.

  ## Examples

      iex> delete_project(project)
      {:ok, %Project{}}

      iex> delete_project(project)
      {:error, %Ecto.Changeset{}}

  """
  def delete_project(%Project{} = project) do
    Repo.delete(project)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking project changes.

  ## Examples

      iex> change_project(project)
      %Ecto.Changeset{data: %Project{}}

  """
  def change_project(%Project{} = project, attrs \\ %{}) do
    Project.changeset(project, attrs)
  end

  alias Tasker.Projects.Location

  @doc """
  Returns the list of locations.

  ## Examples

      iex> list_locations()
      [%Location{}, ...]

  """
  def list_locations do
    Repo.all(Location)
  end

  @doc """
  Gets a single location.

  Raises `Ecto.NoResultsError` if the Location does not exist.

  ## Examples

      iex> get_location!(123)
      %Location{}

      iex> get_location!(456)
      ** (Ecto.NoResultsError)

  """
  def get_location!(id), do: Repo.get!(Location, id)

  @doc """
  Creates a location.

  ## Examples

      iex> create_location(%{field: value})
      {:ok, %Location{}}

      iex> create_location(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_location(project, attrs \\ %{}) do
    project
    |> Ecto.build_assoc(:locations)
    |> Location.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a location.

  ## Examples

      iex> update_location(location, %{field: new_value})
      {:ok, %Location{}}

      iex> update_location(location, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_location(%Location{} = location, attrs) do
    location
    |> Location.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a location.

  ## Examples

      iex> delete_location(location)
      {:ok, %Location{}}

      iex> delete_location(location)
      {:error, %Ecto.Changeset{}}

  """
  def delete_location(%Location{} = location) do
    Repo.delete(location)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking location changes.

  ## Examples

      iex> change_location(location)
      %Ecto.Changeset{data: %Location{}}

  """
  def change_location(%Location{} = location, attrs \\ %{}) do
    Location.changeset(location, attrs)
  end

  alias Tasker.Projects.WorkerProject

  @doc """
  Returns the list of workers_projects.

  ## Examples

      iex> list_workers_projects()
      [%WorkerProject{}, ...]

  """
  def list_workers_projects do
    Repo.all(WorkerProject)
  end

  @doc """
  Gets a single worker_project.

  Raises `Ecto.NoResultsError` if the Worker project does not exist.

  ## Examples

      iex> get_worker_project!(123)
      %WorkerProject{}

      iex> get_worker_project!(456)
      ** (Ecto.NoResultsError)

  """
  def get_worker_project!(id), do: Repo.get!(WorkerProject, id)

  @doc """
  Creates a worker_project.

  ## Examples

      iex> create_worker_project(%{field: value})
      {:ok, %WorkerProject{}}

      iex> create_worker_project(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_worker_project(worker, attrs \\ %{}) do
    worker
    |> Ecto.build_assoc(:workers_projects)
    |> WorkerProject.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a worker_project.

  ## Examples

      iex> update_worker_project(worker_project, %{field: new_value})
      {:ok, %WorkerProject{}}

      iex> update_worker_project(worker_project, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_worker_project(%WorkerProject{} = worker_project, attrs) do
    worker_project
    |> WorkerProject.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a worker_project.

  ## Examples

      iex> delete_worker_project(worker_project)
      {:ok, %WorkerProject{}}

      iex> delete_worker_project(worker_project)
      {:error, %Ecto.Changeset{}}

  """
  def delete_worker_project(%WorkerProject{} = worker_project) do
    Repo.delete(worker_project)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking worker_project changes.

  ## Examples

      iex> change_worker_project(worker_project)
      %Ecto.Changeset{data: %WorkerProject{}}

  """
  def change_worker_project(%WorkerProject{} = worker_project, attrs \\ %{}) do
    WorkerProject.changeset(worker_project, attrs)
  end
end
