defmodule TechInterview.Repo.Migrations.AddDeviceTable do
  use Ecto.Migration

  def change do
    create table("devices") do
      add :description,    :string, size: 100, null: false
      #most likely this would make the most sense as an int type, or a char type
      #i am going to leave it a varchar because it reduces some annoying boiler plate
      add :grade, :string, size: 2, null: false
      timestamps()
    end
  end
end
