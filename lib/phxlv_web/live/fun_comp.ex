defmodule PhxLVWeb.FunComp do
  @moduledoc false
  use PhxLVWeb, :component

  def icons(assigns) do
    stars =
      List.duplicate("&#x2605;", 5)
      |> Enum.join(" ")

    assigns = assign(assigns, :stars, stars)

    ~H"""
    <div class="p-4 hover:border-emerald-600 hover:border-2">
      <div>
      </div>
      <h4 class="text-gray-500 dark:text-gray-400">
        Some Raw HTML symbols: <%= raw @stars %>
      </h4>
    </div>
    """
  end

  def with_slot(assigns) do
    ~H"""
    <div class="p-4 hover:border-emerald-600 hover:border-2">
      <h4 class="text-gray-500 dark:text-gray-400">
        This is <span class="text-blue-600 dark:text-blue-500">function component</span> with slot
      </h4>
      <div class="text-gray-500 dark:text-gray-400 hover:border-red-400 hover:border-2">
        <%= render_slot(@inner_block)%>
      </div>
    </div>
    """
  end

  def with_assign(assigns) do
    ~H"""
    <div class="text-gray-500 dark:text-gray-400 hover:border-emerald-600 hover:border-2">
      <h2>This is function component with assign</h2>
      <div class="overflow-x-auto relative shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
          <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr>
              <th scope="row" class="py-3 px-6">
                Numbers
              </th>
            </tr>
          </thead>
          <tbody>
            <%= for item <- @numbers do %>
              <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <td class="py-4 px-6">
                 <%= item %>
                </td>
              </tr>
            <% end %>
          </tbody>
        </table>
      </div>
    </div>
    """
  end
end
