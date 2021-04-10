defmodule WaterSensorApiWeb.Router do
  use WaterSensorApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WaterSensorApiWeb do
    pipe_through :api

    get "/health", ApiController, :health
    get "/status", ApiController, :status
  end
end
