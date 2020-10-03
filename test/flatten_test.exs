defmodule FlattenTest do
  use ExUnit.Case
  doctest Flatten

  test "flatten/1 flattens a list" do
    assert Flatten.flatten([ 1, [ 2, [ 3 ] ], 4 ]) == {:ok, [ 1, 2, 3, 4 ]}
  end

  test "flatten/1 flattens an empty list" do
    assert Flatten.flatten([]) == {:ok, []}
  end

  test "flatten/1 raises an error when given something other than a list" do
    assert Flatten.flatten("asdasd") == {:error, :not_a_list}
    assert Flatten.flatten(1) == {:error, :not_a_list}
    assert Flatten.flatten({:ok, :not_ok}) == {:error, :not_a_list}
  end
end
