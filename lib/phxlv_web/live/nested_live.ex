defmodule PhxLVWeb.NestedLive do
  @moduledoc false
  use PhxLVWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1 class="mb-4 text-3xl font-extrabold text-gray-900 dark:text-white md:text-5xl lg:text-6xl">
      <span class="text-transparent bg-clip-text bg-gradient-to-r to-emerald-600 from-sky-400">
        Welcome in nested Live View
      </span>
    </h1>
    """
  end
end
