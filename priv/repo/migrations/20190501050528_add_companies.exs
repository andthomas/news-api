defmodule NewsApi.Repo.Migrations.AddCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add :code, :string
      add :name, :string

      timestamps()
    end
  end
end
