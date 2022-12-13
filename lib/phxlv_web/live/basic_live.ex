defmodule PhxLVWeb.BasicLive do
  @moduledoc false
  use PhxLVWeb, :live_view
  require Logger

  def mount(_params, _session, socket) do
    Logger.info("=====\nIn mount/3\n=====\n")
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="grid place-content-center transition-colors duration-300">
      <h1 class="mb-4 text-4xl font-extrabold tracking-tight leading-none text-gray-900 md:text-5xl lg:text-6xl dark:text-white m-8">
        Welcome to Phoenix LiveView 101
      </h1>
      <div>
        <h2 class="text-4xl font-extrabold dark:text-white text-gray-900 m-8">
          Materials
        </h2>
        <dl class="max-w-md text-gray-900 divide-y divide-gray-200 dark:text-white dark:divide-gray-700 m-8">
          <div class="flex flex-col pb-3">
            <dt class="mb-1 text-gray-500 md:text-lg dark:text-gray-400">
              <a target="_blank" href="https://hexdocs.pm/phoenix_live_view/Phoenix.LiveView.html">
                Phoenix LiveView docs
              </a>
            </dt>
            <dd class="text-lg font-semibold">Official documentation on Hex</dd>
          </div>
          <div class="flex flex-col py-3">
            <dt class="mb-1 text-gray-500 md:text-lg dark:text-gray-400">
              <.link href="https://github.com/luk-pau-es/phx_lv_101" target="_blank">PhxLV 101</.link>
            </dt>
            <dd class="text-lg font-semibold">Github Reposity with Demo</dd>
          </div>
          <div class="flex flex-col pt-3">
            <dt class="mb-1 text-gray-500 md:text-lg dark:text-gray-400">
              <.link
                href="https://docs.google.com/presentation/d/1bF4IgoP7753SMAFrYdT_EwCIppej55Ix4-A_-mBKpk0/edit#slide=id.g18d8b811611_0_44"
                target="_blank"
              >
                PhxLV 101 presentation
              </.link>
            </dt>
            <dd class="text-lg font-semibold">Link do Google Drive presentatation</dd>
          </div>
          <div class="flex flex-col pt-3">
            <dt class="mb-1 text-gray-500 md:text-lg dark:text-gray-400">
              <.link href="https://tailwindcss.com/" target="_blank">TailwindCSS</.link>
            </dt>
            <dd class="text-lg font-semibold">CSS framework</dd>
          </div>
          <div class="flex flex-col pt-3">
            <dt class="mb-1 text-gray-500 md:text-lg dark:text-gray-400">
              <.link href="https://flowbite.com" target="_blank">Flowbite</.link>
            </dt>
            <dd class="text-lg font-semibold">TailwindCSS based UI components</dd>
          </div>
        </dl>
      </div>
    </div>
    """
  end

  def handle_params(_params, uri, socket) do
    Logger.info("=====\nIn handle_params/3\nURI: #{uri}\n=====\n")
    {:noreply, socket}
  end
end
