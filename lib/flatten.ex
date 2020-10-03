defmodule Flatten do
  @moduledoc """
  Flatten is responsible for flattening lists
  """

  @spec flatten(any) :: {:ok, list()} | {:error, :not_a_list}
  @doc """
  flatten/1 method flattens a given list

  ## Examples

      iex> Flatten.flatten([ 1, [ 2, [ 3 ] ], 4 ])
      {:ok, [ 1, 2, 3, 4 ]}

      iex> Flatten.flatten("asd")
      {:error, :not_a_list}

  """
  def flatten(arg) when not is_list(arg), do: {:error, :not_a_list}
  def flatten(list), do: {:ok, do_flatten(list)}

  defp do_flatten([head | tail]) when is_list(head) do
    do_flatten(head) ++ do_flatten(tail)
  end
  defp do_flatten([head | tail]), do: [head | do_flatten(tail)]
  defp do_flatten(item), do: item
end
