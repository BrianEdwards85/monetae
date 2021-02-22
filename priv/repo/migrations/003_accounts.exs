defmodule Monetae.Repo.Migrations.Accounts do
  use Ecto.Migration

  def change do
    create table(:accounts, primary_key: false, prefix: "monetae") do
      add :id, :uuid, primary_key: true, default: fragment("uuid_generate_v4()")
      add :name, :text, null: false
      add :active, :boolean, null: false, default: true
      add :created_by_id, references(:users, type: :uuid), null: false
      timestamps default: fragment("now()")
      add :balance, :bigint, null: false, default: 0
    end

    create table(:transaction_sets, primary_key: false, prefix: "monetae") do
      add :id, :uuid, primary_key: true, default: fragment("uuid_generate_v4()")
      add :description, :text, null: false
      add :effective_date, :naive_datetime, null: false, default: fragment("now()")
      add :created_by_id, references(:users, type: :uuid), null: false
      timestamps default: fragment("now()")
    end

    create table(:transactions, primary_key: false, prefix: "monetae") do
      add :id, :uuid, primary_key: true, default: fragment("uuid_generate_v4()")
      add :account_id, references(:accounts, type: :uuid), null: false
      add :transation_set, references(:transaction_sets, type: :uuid), null: false
      add :ammount, :bigint, null: false
      add :balance, :bigint, null: false
    end
  end
end
