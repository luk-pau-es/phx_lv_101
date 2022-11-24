defmodule PhxLVWeb.FunComp do
  @moduledoc false
  use PhxLVWeb, :component

  def icons(assigns) do
    stars =
      List.duplicate("&#x2605;", 5)
      |> Enum.join(" ")

    assigns = assign(assigns, :stars, stars)

    ~H"""
    <div style="border-style: solid; border-color: blue;">
      <h4>
        <%= raw @stars %>
      </h4>
    </div>
    """
  end

  def with_slot(assigns) do
    ~H"""
    <div style="border-style: solid; border-color: red;">
      <h2>This is function component with slot</h2>
      <%= render_slot(@inner_block)%>
    </div>
    """
  end

  def with_assign(assigns) do
    ~H"""
    <div style="border-style: solid; border-color: blue;">
      <h2>This is function component with assign</h2>
      <table>
        <tr>
          <%= for item <- @numbers do %>
            <td>
              <%= item %>
            </td>
          <% end %>
        </tr>
      </table>
    </div>
    """
  end
end
