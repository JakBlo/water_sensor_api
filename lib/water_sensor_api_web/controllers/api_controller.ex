defmodule WaterSensorApiWeb.ApiController do
  use WaterSensorApiWeb, :controller

  def health(conn, _params) do
    json(conn, %{status: :ok})
  end

  def status(conn, _params) do
    status = WaterSensorApi.GpioService.get_values()
    json(conn, status)
  end
end
