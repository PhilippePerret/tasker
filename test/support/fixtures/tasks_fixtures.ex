defmodule Tasker.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Tasker.Task` context.
  """

  @doc """
  Generate a task_time.
  """
  def task_time_fixture(attrs \\ %{}) do
    {:ok, task_time} =
      attrs
      |> Enum.into(%{
        duration: 42,
        execution_duration: 42,
        id: "some id",
        recurrence: "some recurrence",
        should_end_at: ~N[2024-10-29 08:44:00],
        should_start_at: ~N[2024-10-29 08:44:00]
      })
      |> Tasker.Tasks.create_task_time()

    task_time
  end

  @doc """
  Generate a task_statut.
  """
  def task_statut_fixture(attrs \\ %{}) do
    {:ok, task_statut} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Tasker.Tasks.create_task_statut()

    task_statut
  end

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        id: "some id"
      })
      |> Tasker.Tasks.create_task()

    task
  end

  @doc """
  Generate a task_spec.
  """
  def task_spec_fixture(attrs \\ %{}) do
    {:ok, task_spec} =
      attrs
      |> Enum.into(%{
        content: "some content",
        description: "some description",
        id: "some id",
        note: "some note",
        script: "some script",
        titre: "some titre"
      })
      |> Tasker.Tasks.create_task_spec()

    task_spec
  end

  @doc """
  Generate a worker_task.
  """
  def worker_task_fixture(attrs \\ %{}) do
    {:ok, worker_task} =
      attrs
      |> Enum.into(%{

      })
      |> Tasker.Tasks.create_worker_task()

    worker_task
  end
end
