# Flatten

Flattens a given list

## Usage

```elixir
iex> Flatten.flatten([ 1, [ 2, [ 3 ] ], 4 ])
{:ok, [ 1, 2, 3, 4 ]}

iex> Flatten.flatten("asd")
{:error, :not_a_list}
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `flatten` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:flatten, "~> 0.1.0"}
  ]
end
```
