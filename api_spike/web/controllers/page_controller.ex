defmodule ApiSpike.PageController do
  use ApiSpike.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
