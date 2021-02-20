defmodule Monetae.Repo.Migrations.Users do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false, prefix: "monetae") do
      add :id, :uuid, primary_key: true, default: fragment("uuid_generate_v4()")
      add :name, :text, null: false
      add :password, :text
      add :active, :boolean, null: false, default: true
      add :created_by, references(:users, type: :uuid), null: false
      timestamps default: fragment("now()")
    end

    execute """
    INSERT INTO users(id, name, created_by)
    VALUES (CAST('00000000-0000-0000-0000-000000000000' AS UUID), 'root', CAST('00000000-0000-0000-0000-000000000000' AS UUID))
    """
  end
end
