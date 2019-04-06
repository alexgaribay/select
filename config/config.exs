# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :select, SelectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bJToEf6YS4Qkup0qeGNs21GXoZCvECD/xO4N1ml67KGc3DNZ2PhlWl4DWFcwa1l7",
  render_errors: [view: SelectWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Select.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "9DbVdE9HOwirw2MjUDAJtpgU3XMpncxF"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
