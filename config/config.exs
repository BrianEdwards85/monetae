use Mix.Config

config :monetae, ecto_repos: [Monetae.Repo]

import_config "#{Mix.env()}.exs"
