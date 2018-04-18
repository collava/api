defmodule CollavaApiWeb.Router do
  use CollavaApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CollavaApiWeb do
    pipe_through :api
  end
end
