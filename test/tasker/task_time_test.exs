defmodule Tasker.TaskTimeTest do
  use Tasker.DataCase

  alias Tasker.Task.TaskTime

  describe "exec_spans" do
    alias Tasker.Task.TaskTime.ExecSpan

    import Tasker.TaskTimeFixtures

    @invalid_attrs %{id: nil, span_start: nil, span_end: nil}

    test "list_exec_spans/0 returns all exec_spans" do
      exec_span = exec_span_fixture()
      assert TaskTime.list_exec_spans() == [exec_span]
    end

    test "get_exec_span!/1 returns the exec_span with given id" do
      exec_span = exec_span_fixture()
      assert TaskTime.get_exec_span!(exec_span.id) == exec_span
    end

    test "create_exec_span/1 with valid data creates a exec_span" do
      valid_attrs = %{id: "some id", span_start: ~N[2024-10-29 08:55:00], span_end: ~N[2024-10-29 08:55:00]}

      assert {:ok, %ExecSpan{} = exec_span} = TaskTime.create_exec_span(valid_attrs)
      assert exec_span.id == "some id"
      assert exec_span.span_start == ~N[2024-10-29 08:55:00]
      assert exec_span.span_end == ~N[2024-10-29 08:55:00]
    end

    test "create_exec_span/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = TaskTime.create_exec_span(@invalid_attrs)
    end

    test "update_exec_span/2 with valid data updates the exec_span" do
      exec_span = exec_span_fixture()
      update_attrs = %{id: "some updated id", span_start: ~N[2024-10-30 08:55:00], span_end: ~N[2024-10-30 08:55:00]}

      assert {:ok, %ExecSpan{} = exec_span} = TaskTime.update_exec_span(exec_span, update_attrs)
      assert exec_span.id == "some updated id"
      assert exec_span.span_start == ~N[2024-10-30 08:55:00]
      assert exec_span.span_end == ~N[2024-10-30 08:55:00]
    end

    test "update_exec_span/2 with invalid data returns error changeset" do
      exec_span = exec_span_fixture()
      assert {:error, %Ecto.Changeset{}} = TaskTime.update_exec_span(exec_span, @invalid_attrs)
      assert exec_span == TaskTime.get_exec_span!(exec_span.id)
    end

    test "delete_exec_span/1 deletes the exec_span" do
      exec_span = exec_span_fixture()
      assert {:ok, %ExecSpan{}} = TaskTime.delete_exec_span(exec_span)
      assert_raise Ecto.NoResultsError, fn -> TaskTime.get_exec_span!(exec_span.id) end
    end

    test "change_exec_span/1 returns a exec_span changeset" do
      exec_span = exec_span_fixture()
      assert %Ecto.Changeset{} = TaskTime.change_exec_span(exec_span)
    end
  end
end
