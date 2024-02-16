defmodule ElixirFirstPhoenixApiWeb.Router do
  use ElixirFirstPhoenixApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirFirstPhoenixApiWeb do
    pipe_through :api
  end
end
