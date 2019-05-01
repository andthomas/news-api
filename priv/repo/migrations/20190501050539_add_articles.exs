defmodule NewsApi.Repo.Migrations.AddArticles do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :company_id, references(:companies)
      add :title, :string
      add :date, :string
      add :author, :string
      add :source, :string
      add :summary, :text
      add :content, :text

      timestamps()
    end
  end
end
