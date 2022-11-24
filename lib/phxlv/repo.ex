defmodule PhxLV.Repo do
  use Ecto.Repo,
    otp_app: :phxlv,
    adapter: Ecto.Adapters.Postgres
end
