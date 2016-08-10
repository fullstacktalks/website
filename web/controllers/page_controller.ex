defmodule Fullstacktalks.PageController do
  use Fullstacktalks.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
