defmodule PhxLVWeb.LvCompLive do
  @moduledoc false
  use PhxLVWeb, :live_component

  def update(_assigns, socket) do
    {:ok, socket |> assign_user()}
  end

  def render(assigns) do
    ~H"""
    <div>
    <style>
      .user {color: red;}
    </style>
    <div id={"user-\#{@id}"} class="user">
      <%= @user.name %>
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
