defmodule TechInterview.Device do
  use Ecto.Schema
  import Ecto.Changeset
  schema "devices" do
    field :description, :string
    field :grade, :string
  end

  def changeset(device, params \\ %{}) do
    device
    |> cast(params, [:description, :grade])
    |> validate_required([:description, :grade])
    |> validate_length(:description, min: 3, max: 100)
    |> validate_length(:grade, min: 1, max: 2)
    |> validate_valid_characters()
  end

  defp validate_valid_characters(changeset) do
    grade = get_field(changeset, :grade)
    cond do
      grade in ["A+","A","B","C","D"] -> changeset
      true -> add_error(changeset, :grade, "Grade Must be a valid grade; A+, A, B, C, D")
    end
  end
end
