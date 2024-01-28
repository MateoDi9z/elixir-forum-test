defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "John Doe", email: "jhon@gmail.com"},
      %{id: 2, name: "Bob Doe", email: "bob@gmail.com"},
      %{id: 3, name: "Alice Doe", email: "alice@gmail.com"},
    ]

    # render(conn, :users, users: users, layout: false) - HTML

    json(conn, %{users: users}) # - JSON
  end
end
