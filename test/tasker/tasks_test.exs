defmodule Tasker.TasksTest do
  use Tasker.DataCase

  alias Tasker.Tasks

  describe "task_statuts" do
    alias Tasker.Tasks.TaskStatut

    import Tasker.TasksFixtures

    @invalid_attrs %{name: nil}

    test "list_task_statuts/0 returns all task_statuts" do
      task_statut = task_statut_fixture()
      assert Tasks.list_task_statuts() == [task_statut]
    end

    test "get_task_statut!/1 returns the task_statut with given id" do
      task_statut = task_statut_fixture()
      assert Tasks.get_task_statut!(task_statut.id) == task_statut
    end

    test "create_task_statut/1 with valid data creates a task_statut" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %TaskStatut{} = task_statut} = Tasks.create_task_statut(valid_attrs)
      assert task_statut.name == "some name"
    end

    test "create_task_statut/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Tasks.create_task_statut(@invalid_attrs)
    end

    test "update_task_statut/2 with valid data updates the task_statut" do
      task_statut = task_statut_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %TaskStatut{} = task_statut} = Tasks.update_task_statut(task_statut, update_attrs)
      assert task_statut.name == "some updated name"
    end

    test "update_task_statut/2 with invalid data returns error changeset" do
      task_statut = task_statut_fixture()
      assert {:error, %Ecto.Changeset{}} = Tasks.update_task_statut(task_statut, @invalid_attrs)
      assert task_statut == Tasks.get_task_statut!(task_statut.id)
    end

    test "delete_task_statut/1 deletes the task_statut" do
      task_statut = task_statut_fixture()
      assert {:ok, %TaskStatut{}} = Tasks.delete_task_statut(task_statut)
      assert_raise Ecto.NoResultsError, fn -> Tasks.get_task_statut!(task_statut.id) end
    end

    test "change_task_statut/1 returns a task_statut changeset" do
      task_statut = task_statut_fixture()
      assert %Ecto.Changeset{} = Tasks.change_task_statut(task_statut)
    end
  end

  describe "tasks" do
    alias Tasker.Tasks.Task

    import Tasker.TasksFixtures

    @invalid_attrs %{id: nil}

    test "list_tasks/0 returns all tasks" do
      task = task_fixture()
      assert Tasks.list_tasks() == [task]
    end

    test "get_task!/1 returns the task with given id" do
      task = task_fixture()
      assert Tasks.get_task!(task.id) == task
    end

    test "create_task/1 with valid data creates a task" do
      valid_attrs = %{id: "some id"}

      assert {:ok, %Task{} = task} = Tasks.create_task(valid_attrs)
      assert task.id == "some id"
    end

    test "create_task/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Tasks.create_task(@invalid_attrs)
    end

    test "update_task/2 with valid data updates the task" do
      task = task_fixture()
      update_attrs = %{id: "some updated id"}

      assert {:ok, %Task{} = task} = Tasks.update_task(task, update_attrs)
      assert task.id == "some updated id"
    end

    test "update_task/2 with invalid data returns error changeset" do
      task = task_fixture()
      assert {:error, %Ecto.Changeset{}} = Tasks.update_task(task, @invalid_attrs)
      assert task == Tasks.get_task!(task.id)
    end

    test "delete_task/1 deletes the task" do
      task = task_fixture()
      assert {:ok, %Task{}} = Tasks.delete_task(task)
      assert_raise Ecto.NoResultsError, fn -> Tasks.get_task!(task.id) end
    end

    test "change_task/1 returns a task changeset" do
      task = task_fixture()
      assert %Ecto.Changeset{} = Tasks.change_task(task)
    end
  end

  describe "task_specs" do
    alias Tasker.Tasks.TaskSpec

    import Tasker.TasksFixtures

    @invalid_attrs %{id: nil, script: nil, description: nil, titre: nil, content: nil, note: nil}

    test "list_task_specs/0 returns all task_specs" do
      task_spec = task_spec_fixture()
      assert Tasks.list_task_specs() == [task_spec]
    end

    test "get_task_spec!/1 returns the task_spec with given id" do
      task_spec = task_spec_fixture()
      assert Tasks.get_task_spec!(task_spec.id) == task_spec
    end

    test "create_task_spec/1 with valid data creates a task_spec" do
      valid_attrs = %{id: "some id", script: "some script", description: "some description", titre: "some titre", content: "some content", note: "some note"}

      assert {:ok, %TaskSpec{} = task_spec} = Tasks.create_task_spec(valid_attrs)
      assert task_spec.id == "some id"
      assert task_spec.script == "some script"
      assert task_spec.description == "some description"
      assert task_spec.titre == "some titre"
      assert task_spec.content == "some content"
      assert task_spec.note == "some note"
    end

    test "create_task_spec/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Tasks.create_task_spec(@invalid_attrs)
    end

    test "update_task_spec/2 with valid data updates the task_spec" do
      task_spec = task_spec_fixture()
      update_attrs = %{id: "some updated id", script: "some updated script", description: "some updated description", titre: "some updated titre", content: "some updated content", note: "some updated note"}

      assert {:ok, %TaskSpec{} = task_spec} = Tasks.update_task_spec(task_spec, update_attrs)
      assert task_spec.id == "some updated id"
      assert task_spec.script == "some updated script"
      assert task_spec.description == "some updated description"
      assert task_spec.titre == "some updated titre"
      assert task_spec.content == "some updated content"
      assert task_spec.note == "some updated note"
    end

    test "update_task_spec/2 with invalid data returns error changeset" do
      task_spec = task_spec_fixture()
      assert {:error, %Ecto.Changeset{}} = Tasks.update_task_spec(task_spec, @invalid_attrs)
      assert task_spec == Tasks.get_task_spec!(task_spec.id)
    end

    test "delete_task_spec/1 deletes the task_spec" do
      task_spec = task_spec_fixture()
      assert {:ok, %TaskSpec{}} = Tasks.delete_task_spec(task_spec)
      assert_raise Ecto.NoResultsError, fn -> Tasks.get_task_spec!(task_spec.id) end
    end

    test "change_task_spec/1 returns a task_spec changeset" do
      task_spec = task_spec_fixture()
      assert %Ecto.Changeset{} = Tasks.change_task_spec(task_spec)
    end
  end
end
