defmodule TaskerWeb.PageController do
  use TaskerWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    if conn.assigns[:current_user] do
      render(conn, :main, layout: false)
    else
      render(conn, :home, layout: false)
    end
  end

end
