defmodule PhxLVWeb.ExtTemplateLive do
  @moduledoc false
  use PhxLVWeb, :live_view

  def mount(_params, _session, socket) do
    item = DateTime.utc_now() |> DateTime.to_string()
    {:ok, socket |> assign(item: item)}
  end
end
