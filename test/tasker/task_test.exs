defmodule Tasker.TaskTest do
  use Tasker.DataCase

  alias Tasker.Tasks

  describe "task_times" do
    alias Tasker.Tasks.TaskTime

    import Tasker.TasksFixtures

    @invalid_attrs %{id: nil, duration: nil, should_start_at: nil, should_end_at: nil, recurrence: nil, execution_duration: nil}

    test "list_task_times/0 returns all task_times" do
      task_time = task_time_fixture()
      assert Task.list_task_times() == [task_time]
    end

    test "get_task_time!/1 returns the task_time with given id" do
      task_time = task_time_fixture()
      assert Task.get_task_time!(task_time.id) == task_time
    end

    test "create_task_time/1 with valid data creates a task_time" do
      valid_attrs = %{id: "some id", duration: 42, should_start_at: ~N[2024-10-29 08:44:00], should_end_at: ~N[2024-10-29 08:44:00], recurrence: "some recurrence", execution_duration: 42}

      assert {:ok, %TaskTime{} = task_time} = Task.create_task_time(valid_attrs)
      assert task_time.id == "some id"
      assert task_time.duration == 42
      assert task_time.should_start_at == ~N[2024-10-29 08:44:00]
      assert task_time.should_end_at == ~N[2024-10-29 08:44:00]
      assert task_time.recurrence == "some recurrence"
      assert task_time.execution_duration == 42
    end

    test "create_task_time/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Task.create_task_time(@invalid_attrs)
    end

    test "update_task_time/2 with valid data updates the task_time" do
      task_time = task_time_fixture()
      update_attrs = %{id: "some updated id", duration: 43, should_start_at: ~N[2024-10-30 08:44:00], should_end_at: ~N[2024-10-30 08:44:00], recurrence: "some updated recurrence", execution_duration: 43}

      assert {:ok, %TaskTime{} = task_time} = Task.update_task_time(task_time, update_attrs)
      assert task_time.id == "some updated id"
      assert task_time.duration == 43
      assert task_time.should_start_at == ~N[2024-10-30 08:44:00]
      assert task_time.should_end_at == ~N[2024-10-30 08:44:00]
      assert task_time.recurrence == "some updated recurrence"
      assert task_time.execution_duration == 43
    end

    test "update_task_time/2 with invalid data returns error changeset" do
      task_time = task_time_fixture()
      assert {:error, %Ecto.Changeset{}} = Task.update_task_time(task_time, @invalid_attrs)
      assert task_time == Tasks.get_task_time!(task_time.id)
    end

    test "delete_task_time/1 deletes the task_time" do
      task_time = task_time_fixture()
      assert {:ok, %TaskTime{}} = Task.delete_task_time(task_time)
      assert_raise Ecto.NoResultsError, fn -> Task.get_task_time!(task_time.id) end
    end

    test "change_task_time/1 returns a task_time changeset" do
      task_time = task_time_fixture()
      assert %Ecto.Changeset{} = Task.change_task_time(task_time)
    end
  end
end
