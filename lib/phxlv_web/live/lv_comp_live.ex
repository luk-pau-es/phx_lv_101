defmodule PhxLVWeb.LvCompLive do
  @moduledoc false
  use PhxLVWeb, :live_component

  def update(_assigns, socket) do
    user = %{id: 1, name: "Some name"}
    {:ok, assign(socket, :user, user)}
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
end
