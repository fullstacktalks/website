use Mix.Config

config :fullstacktalks, Fullstacktalks.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "fullstacktalks.herokuapp.com", port: 80],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base: System.get_env("SECRET_KEY_BASE")

config :logger, level: :info

config :fullstacktalks, Fullstacktalks.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true
