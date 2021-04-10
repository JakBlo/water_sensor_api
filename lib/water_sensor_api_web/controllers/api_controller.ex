defmodule WaterSensorApiWeb.ApiController do
  use WaterSensorApiWeb, :controller


  def health(conn, _params) do
    json(conn, %{status: :ok})
  end

  def status(conn, _params) do
    {:ok, gpio} = Circuits.GPIO.open(17, :input)
    status = Circuits.GPIO.read(gpio)
    json(conn, %{status: status})
  end

end
