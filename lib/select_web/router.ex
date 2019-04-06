defmodule SelectWeb.Router do
  use SelectWeb, :router
  import Phoenix.LiveView.Router

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

  scope "/", SelectWeb do
    pipe_through :browser

    live "/", Live.Form
  end

  # Other scopes may use custom stacks.
  # scope "/api", SelectWeb do
  #   pipe_through :api
  # end
end
