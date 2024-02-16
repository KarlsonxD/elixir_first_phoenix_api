defmodule ElixirFirstPhoenixApiWeb.Controllers.DefaultController do
  # importing the controller
  use ElixirFirstPhoenixApiWeb, :controller

  def index(conn, _params) do
    text(conn, "The Phoenix Api is LIVE - #{Mix.env()}")
  end
end
