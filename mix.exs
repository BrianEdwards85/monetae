defmodule Monetae.MixProject do
  use Mix.Project

  def project do
    [
      app: :monetae,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Monetae.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.11"},
      {:cowboy, "~> 2.8"},
      {:plug_cowboy, "~> 2.4"},
      {:jason, "~> 1.2"},
      {:ecto_sql, "~> 3.5"},
      {:postgrex, ">= 0.0.0"},
      {:absinthe, "~> 1.6"},
      {:absinthe_plug, "~> 1.5"},
      {:dataloader, "~> 1.0"}
    ]
  end
end
