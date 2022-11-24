defmodule PhxLV.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PhxLV.Repo,
      # Start the Telemetry supervisor
      PhxLVWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PhxLV.PubSub},
      # Start the Endpoint (http/https)
      PhxLVWeb.Endpoint
      # Start a worker by calling: PhxLV.Worker.start_link(arg)
      # {PhxLV.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhxLV.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PhxLVWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
