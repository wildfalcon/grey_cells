# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :grey_cells,
  ecto_repos: [GreyCells.Repo]

# Configures the endpoint
config :grey_cells, GreyCellsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "t3HboGPC1A1FTPeeWVsLOODp0NRTZ4XlyLgBOrhiZZDEr4blKPf8PWhCNxt8IiVf",
  render_errors: [view: GreyCellsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GreyCells.PubSub,
  live_view: [signing_salt: "D69+s6BM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
