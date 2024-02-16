defmodule ElixirFirstPhoenixApi.Repo do
  use Ecto.Repo,
    otp_app: :elixir_first_phoenix_api,
    adapter: Ecto.Adapters.Postgres
end
