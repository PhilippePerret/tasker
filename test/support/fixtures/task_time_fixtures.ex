defmodule Tasker.TaskTimeFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Tasker.TaskTime` context.
  """

  @doc """
  Generate a exec_span.
  """
  def exec_span_fixture(attrs \\ %{}) do
    {:ok, exec_span} =
      attrs
      |> Enum.into(%{
        id: "some id",
        span_end: ~N[2024-10-29 08:55:00],
        span_start: ~N[2024-10-29 08:55:00]
      })
      |> Tasker.TaskTime.create_exec_span()

    exec_span
  end
end
