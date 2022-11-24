defmodule PhxLV.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :answer, :string
      add :question, :string

      timestamps()
    end
  end
end
