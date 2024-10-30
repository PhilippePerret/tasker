defmodule Tasker.ProjectsTest do
  use Tasker.DataCase

  alias Tasker.Projects

  describe "projects" do
    alias Tasker.Projects.Project

    import Tasker.ProjectsFixtures

    @invalid_attrs %{id: nil, name: nil, description: nil, start_at: nil, expected_at: nil}

    test "list_projects/0 returns all projects" do
      project = project_fixture()
      assert Projects.list_projects() == [project]
    end

    test "get_project!/1 returns the project with given id" do
      project = project_fixture()
      assert Projects.get_project!(project.id) == project
    end

    test "create_project/1 with valid data creates a project" do
      valid_attrs = %{id: "some id", name: "some name", description: "some description", start_at: ~N[2024-10-29 09:10:00], expected_at: ~N[2024-10-29 09:10:00]}

      assert {:ok, %Project{} = project} = Projects.create_project(valid_attrs)
      assert project.id == "some id"
      assert project.name == "some name"
      assert project.description == "some description"
      assert project.start_at == ~N[2024-10-29 09:10:00]
      assert project.expected_at == ~N[2024-10-29 09:10:00]
    end

    test "create_project/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Projects.create_project(@invalid_attrs)
    end

    test "update_project/2 with valid data updates the project" do
      project = project_fixture()
      update_attrs = %{id: "some updated id", name: "some updated name", description: "some updated description", start_at: ~N[2024-10-30 09:10:00], expected_at: ~N[2024-10-30 09:10:00]}

      assert {:ok, %Project{} = project} = Projects.update_project(project, update_attrs)
      assert project.id == "some updated id"
      assert project.name == "some updated name"
      assert project.description == "some updated description"
      assert project.start_at == ~N[2024-10-30 09:10:00]
      assert project.expected_at == ~N[2024-10-30 09:10:00]
    end

    test "update_project/2 with invalid data returns error changeset" do
      project = project_fixture()
      assert {:error, %Ecto.Changeset{}} = Projects.update_project(project, @invalid_attrs)
      assert project == Projects.get_project!(project.id)
    end

    test "delete_project/1 deletes the project" do
      project = project_fixture()
      assert {:ok, %Project{}} = Projects.delete_project(project)
      assert_raise Ecto.NoResultsError, fn -> Projects.get_project!(project.id) end
    end

    test "change_project/1 returns a project changeset" do
      project = project_fixture()
      assert %Ecto.Changeset{} = Projects.change_project(project)
    end
  end

  describe "locations" do
    alias Tasker.Projects.Location

    import Tasker.ProjectsFixtures

    @invalid_attrs %{name: nil}

    test "list_locations/0 returns all locations" do
      location = location_fixture()
      assert Projects.list_locations() == [location]
    end

    test "get_location!/1 returns the location with given id" do
      location = location_fixture()
      assert Projects.get_location!(location.id) == location
    end

    test "create_location/1 with valid data creates a location" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Location{} = location} = Projects.create_location(valid_attrs)
      assert location.name == "some name"
    end

    test "create_location/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Projects.create_location(@invalid_attrs)
    end

    test "update_location/2 with valid data updates the location" do
      location = location_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Location{} = location} = Projects.update_location(location, update_attrs)
      assert location.name == "some updated name"
    end

    test "update_location/2 with invalid data returns error changeset" do
      location = location_fixture()
      assert {:error, %Ecto.Changeset{}} = Projects.update_location(location, @invalid_attrs)
      assert location == Projects.get_location!(location.id)
    end

    test "delete_location/1 deletes the location" do
      location = location_fixture()
      assert {:ok, %Location{}} = Projects.delete_location(location)
      assert_raise Ecto.NoResultsError, fn -> Projects.get_location!(location.id) end
    end

    test "change_location/1 returns a location changeset" do
      location = location_fixture()
      assert %Ecto.Changeset{} = Projects.change_location(location)
    end
  end
end
