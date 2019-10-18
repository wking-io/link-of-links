defmodule Lol.Repo.Migrations.CreateLinks do
  use Ecto.Migration

  def change do
    create table(:links) do
      add :title, :string
      add :links, {:array, :map}
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:links, [:title])
    create index(:links, [:user_id])
  end
end
