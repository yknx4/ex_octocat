# ExOctocat

GitHub&#39;s v3 REST API.

## Building

To install the required dependencies and to build the elixir project, run:

```bash
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_octocat` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ex_octocat, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_octocat](https://hexdocs.pm/ex_octocat).
