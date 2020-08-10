use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :grey_cells, GreyCells.Repo,
  username: "postgres",
  password: "postgres",
  database: "grey_cells_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "127.0.0.1",
  port: 5445,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :grey_cells, GreyCellsWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
