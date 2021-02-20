defmodule Monetae.Router do
  use Plug.Router

  plug Plug.Logger

  plug :match
  plug Plug.Parsers,
    parsers: [:json, Absinthe.Plug.Parser],
    json_decoder: Jason

  plug :dispatch

  forward "/bot", to: Monetae.Bot

  match _ do
    send_resp(conn, 404, "Not found!")
  end
end