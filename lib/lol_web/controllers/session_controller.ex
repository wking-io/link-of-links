defmodule LolWeb.SessionController do
  use LolWeb, :controller
  plug Ueberauth

  alias LolWeb.User

  def create(%{assigns: %{ueberauth_auth: auth}} = conn, %{"provider" => provider}) do
    user_params = %{
      token: auth.credentials.token,
      first_name: auth.info.first_name,
      last_name: auth.info.last_name,
      email: auth.info.email,
      provider: provider
    }

    changeset = User.changeset(%User{}, user_params)
  end
end
