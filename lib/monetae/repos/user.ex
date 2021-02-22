defmodule Monetae.Repos.User do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "users" do
    field :name, :string
    field :password, :string
    field :active, :boolean
    belongs_to :created_by, __MODULE__, type: :binary_id
    has_many :emails, Monetae.Repos.UserEmails
    timestamps()
  end

  alias Monetae.Repo

  def list_users(query \\ __MODULE__) do
    Repo.all(query)
  end

end
