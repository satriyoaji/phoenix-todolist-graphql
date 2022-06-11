defmodule PhoenixGraphqlWeb.PageController do
  use PhoenixGraphqlWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
