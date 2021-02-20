defmodule Monetae.Repo.Migrations.UserEmails do
  use Ecto.Migration

  def change do
    create table(:user_emails, primary_key: false, prefix: "monetae") do
      add :email, :text, null: false, primary_key: true
      add :user_id, references(:users, type: :uuid), null: false
      add :primary, :boolean, null: false, default: false
    end
  end
end
