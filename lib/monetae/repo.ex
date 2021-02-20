defmodule Monetae.Repo do
  use Ecto.Repo,
    otp_app: :monetae,
    adapter: Ecto.Adapters.Postgres
end
