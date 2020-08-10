defmodule GreyCells.Repo do
  use Ecto.Repo,
    otp_app: :grey_cells,
    adapter: Ecto.Adapters.Postgres
end
