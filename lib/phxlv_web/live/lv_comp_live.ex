defmodule PhxLVWeb.LvCompLive do
  @moduledoc false
  use PhxLVWeb, :live_component

  def update(_assigns, socket) do
    {:ok, socket |> assign_user()}
  end

  def render(assigns) do
    ~H"""
    <div id={"user-#{@user.id}"} class="hover:border-2 hover:border-emerald-600">
      <div class="flex items-center gap-1">
        <div class="inline-block overflow-hidden relative w-10 h-10 bg-gray-100 rounded-full dark:bg-gray-600">
          <svg
            class="absolute -left-1 w-12 h-12 text-gray-400"
            fill="currentColor"
            viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill-rule="evenodd"
              d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z"
              clip-rule="evenodd"
            >
            </path>
          </svg>
        </div>
        <p class="text-gray-500 dark:text-gray-400 text-justify"><%= @user.name %></p>
      </div>
    </div>
    """
  end

  defp assign_user(socket) do
    user = %{id: "1", name: "User Name"}

    socket
    |> assign(:user, user)
  end
end
