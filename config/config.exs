# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :water_sensor_api, WaterSensorApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "l9O27jZQQswNifnMVNMgA8SVh4UKmqhTOUH5dylhjdYK/hwpVklyKOpfI4KLoH4x",
  render_errors: [view: WaterSensorApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: WaterSensorApi.PubSub, adapter: Phoenix.PubSub.PG2]

# GPIO config
config :water_sensor_api,
  sensor_pins: %{
    leer: 14,
    voll: 17
  }

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
