use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :app, AppWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :app, App.Repo,
  username: "root",
  password: "",
  database: "app_test",
  hostname: System.get_env("DB_HOST"),
  pool: Ecto.Adapters.SQL.Sandbox
