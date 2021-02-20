defmodule Monetae.Application do
  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: Monetae.Router, options: [port: port()]},
      {Monetae.Repo, []}
    ]

    opts = [strategy: :one_for_one, name: Monetae.Supervisor]

    Logger.info "The server listening at port: #{port()}"
    Supervisor.start_link(children, opts)
  end

  defp port, do: Application.get_env(:monetae, :port, 8000)
end
