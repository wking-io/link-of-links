defmodule LolWeb.LinkController do
  use LolWeb, :controller

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render("index.html")
  end

  def edit(conn, %{"id" => id}) do
    render(conn, "edit.html", id: id)
  end

  def new(conn, _params) do
    render(conn, "new.html")
  end

  def show(conn, %{"id" => id}) do
    render(conn, "show.html", id: id)
  end

  def create(conn, _params) do
  end

  def update(conn, %{"id" => id}) do
  end

  def delete(conn, %{"id" => id}) do
  end
end
