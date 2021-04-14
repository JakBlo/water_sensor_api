defmodule WaterSensorApi.GpioService do
  import Circuits.GPIO

  def get_value(pin) do
    {:ok, gpio} = open(pin, :input)
    read(gpio)
  end

  def get_values() do
    Application.fetch_env!(:water_sensor_api, :sensor_pins)
    |> Enum.Map(fn {key, val} -> {key, get_value(val)})
  end
end
