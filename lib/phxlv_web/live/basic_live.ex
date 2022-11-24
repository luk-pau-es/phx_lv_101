defmodule PhxLVWeb.BasicLive do
  @moduledoc false
  use PhxLVWeb, :live_view
  require Logger

  def mount(_params, _session, socket) do
    Logger.info("=====\nIn mount/3\n=====\n")
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Welcome to Phoenix LiveView</h1>
    """
  end

  def handle_params(_params, uri, socket) do
    Logger.info("=====\nIn handle_params/3\nURI: #{uri}\n=====\n")
    {:noreply, socket}
  end
end
