defmodule PhxLVWeb.Router do
  use PhxLVWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {PhxLVWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhxLVWeb do
    pipe_through :browser

    live "/", BasicLive
    live "/template", ExtTemplateLive
    live "/composed", ComposedLive

    live_session :default, on_mount: PhxLVWeb.SessionAuth do
      live "/session", BasicLive
    end

    live_session :admin, on_mount: {PhxLVWeb.SessionAuth, :admin} do
      live "/session/template", ExtTemplateLive
    end

    live "/questions", QuestionLive.Index, :index
    live "/questions/new", QuestionLive.Index, :new
    live "/questions/:id/edit", QuestionLive.Index, :edit
    live "/questions/:id", QuestionLive.Show, :show
    live "/questions/:id/show/edit", QuestionLive.Show, :edit
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhxLVWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: PhxLVWeb.Telemetry
    end
  end
end
