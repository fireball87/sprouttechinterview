defmodule TechInterviewWeb.DeviceController do
  use TechInterviewWeb, :controller
  alias TechInterview.Device
  alias TechInterview.Repo


  def list(conn, _params) do
    devices = Repo.all(Device)
    render(conn, "list.html", devices: devices)
  end


  def new(conn, _params) do
    changeset = Device.changeset(%Device{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"device" => post_params}) do
    %Device{}
    |> Device.changeset(post_params)
    |> Repo.insert()
    conn
    |> redirect(to: "/")
  end

end
