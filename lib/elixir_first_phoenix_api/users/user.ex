defmodule ElixirFirstPhoenixApi.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :full_name, :string
    field :gender, :string
    field :biography, :string
    # creating a relationship between the account and user entry
    belongs_to :account, ElixirFirstPhoenixApi.Accounts.Account

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:full_name, :gender, :biography])
    |> validate_required([:account_id])
  end
end
