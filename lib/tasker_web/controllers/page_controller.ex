defmodule TaskerWeb.PageController do
  use TaskerWeb, :controller

  # alias TaskerWeb.Gettext

  # plug :set_locale

  # defp set_locale(conn, _opts) do
  #   locale = get_session(conn, :locale) || "en"
  #   Gettext.put_locale(conn, locale)
  #   conn
  # end

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
