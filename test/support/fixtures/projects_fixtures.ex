defmodule Tasker.ProjectsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Tasker.Projects` context.
  """

  @doc """
  Generate a project.
  """
  def project_fixture(attrs \\ %{}) do
    {:ok, project} =
      attrs
      |> Enum.into(%{
        description: "some description",
        expected_at: ~N[2024-10-29 09:10:00],
        id: "some id",
        name: "some name",
        start_at: ~N[2024-10-29 09:10:00]
      })
      |> Tasker.Projects.create_project()

    project
  end

  @doc """
  Generate a location.
  """
  def location_fixture(attrs \\ %{}) do
    {:ok, location} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Tasker.Projects.create_location()

    location
  end
end
