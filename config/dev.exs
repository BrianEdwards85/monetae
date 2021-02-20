use Mix.Config

config :monetae, port: 4000

config :monetae, Monetae.Repo,
  database: "monetae",
  username: "monetae",
  password: "monetae",
  hostname: "192.168.26.2"
