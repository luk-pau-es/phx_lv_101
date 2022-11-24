defmodule PhxLVWeb.MountedExample do
  @moduledoc false
  require Logger

  def on_mount(_, _params, _session, socket) do
    Logger.info(
      "\n===========================\n In on mount function\n===========================\n"
    )

    {:cont, socket}
  end
end

# Exmple: Validate user session (logged in) or redirect to login page
# socket =
#       socket
#       |> assign_new(:current_user, fn -> Accounts.get_user_by_session_token(user_token) end)

#     if socket.assigns.current_user do
#       {:cont, socket}
#     else
#       {:halt, redirect(socket, to: "/login")}
#     end
