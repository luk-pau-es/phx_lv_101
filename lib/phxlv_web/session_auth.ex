defmodule PhxLVWeb.SessionAuth do
  @moduledoc false
  import Phoenix.LiveView
  import Phoenix.Component
  require Logger

  def on_mount(:default, _params, _session, socket) do
    Logger.info("=====\nIn on_mount for :default\n=====\n")
    {:cont, socket |> assign(page_title: "Default session")}
  end

  def on_mount(:admin, params, _session, socket) do
    Logger.info("=====\nIn on_mount for :admin\n=====\n")

    case Map.get(params, "user", "") do
      "admin" ->
        {:cont, socket |> assign(page_title: "Admin session")}

      _ ->
        {:halt, redirect(socket, to: "/session")}
    end
  end
end
