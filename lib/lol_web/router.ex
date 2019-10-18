defmodule LolWeb.Router do
  use LolWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LolWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/login", LoginController, :index
    get "/dashboard", LinkController, :index
    get "/link/:id", LinkController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", LolWeb do
  #   pipe_through :api
  # end
end
