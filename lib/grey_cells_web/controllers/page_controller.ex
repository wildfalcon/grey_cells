defmodule GreyCellsWeb.PageController do
  use GreyCellsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
