defmodule CollavaApiWeb.Router do
  use CollavaApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", CollavaApiWeb do
    pipe_through :api

    resources "/users", UserController
  end
end
