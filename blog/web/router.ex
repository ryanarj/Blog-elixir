defmodule Blog.Router do
  use Blog.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
    get "/", PageController, :index
  end

  scope "/api", Blog do
    pipe_through :api
    get "/", PageController, :index
  end
end
