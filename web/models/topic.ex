defmodule Discuss.Topic do
  use Discuss.Web, :model

  # Map model to database 
  schema "topics" do
    field(:title, :string)
  end

  # struct -> An hash that contains some data. Represents a record (or a record we want to save) in the database 
  # params -> An hash that contains properties we want to update the struct with
  def changeset(struct, params \\ %{}) do
    struct
    # produces a changeset 
    |> cast(params, [:title])
    # add errors to changeset 
    |> validate_required([:title])
  end
end
