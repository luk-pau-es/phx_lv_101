defmodule PhxLVWeb.ComposedLive do
  @moduledoc false
  use PhxLVWeb, :live_view
  alias PhxLVWeb.FunComp
  alias PhxLVWeb.LvCompLive
  alias PhxLVWeb.CounterLive

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
