defmodule NewsApi.PageController do
  use NewsApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
