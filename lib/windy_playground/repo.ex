defmodule WindyPlayground.Repo do
  use Ecto.Repo,
    otp_app: :windy_playground,
    adapter: Ecto.Adapters.Postgres
end
