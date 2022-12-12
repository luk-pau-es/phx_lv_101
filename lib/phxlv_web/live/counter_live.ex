defmodule PhxLVWeb.CounterLive do
  @moduledoc false
  use PhxLVWeb, :live_component
  alias PhxLVWeb.FunComp

  def update(assigns, socket) do
    {:ok, socket |> assign(assigns) |> set_initial_counter()}
  end

  def handle_event("increment", _params, socket) do
    counter = socket.assigns.counter
    {:noreply, socket |> assign(:counter, counter + 1)}
  end

  def handle_event("decrement", _params, socket) do
    counter = socket.assigns.counter
    {:noreply, socket |> assign(:counter, counter - 1)}
  end

  defp set_initial_counter(socket) do
    socket
    |> assign(:counter, 0)
  end
end
