defmodule PhoenixGraphql.TodosFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixGraphql.Todos` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        completed_at: ~U[2022-06-10 01:09:00Z],
        content: "some content"
      })
      |> PhoenixGraphql.Todos.create_item()

    item
  end
end
