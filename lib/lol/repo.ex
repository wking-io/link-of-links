defmodule Lol.Repo do
  use Ecto.Repo,
    otp_app: :lol,
    adapter: Ecto.Adapters.Postgres
end
