defmodule Monetae.Repos.UserEmail do
  use Ecto.Schema

  @primary_key {:email, :string, autogenerate: false}
  schema "user_emails" do
    belongs_to :user, Monerae.Repo.User, type: :binary_id
    field :primary, :boolean
    timestamps()
  end
end
