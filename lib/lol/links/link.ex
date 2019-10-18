defmodule Lol.Links.Link do
  use Ecto.Schema
  import Ecto.Changeset

  schema "links" do
    field :links, {:array, :map}
    field :title, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [:title, :links])
    |> validate_required([:title, :links])
    |> unique_constraint(:title)
  end
end
