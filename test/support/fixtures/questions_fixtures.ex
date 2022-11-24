defmodule PhxLV.QuestionsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhxLV.Questions` context.
  """

  @doc """
  Generate a question.
  """
  def question_fixture(attrs \\ %{}) do
    {:ok, question} =
      attrs
      |> Enum.into(%{
        answer: "some answer",
        question: "some question"
      })
      |> PhxLV.Questions.create_question()

    question
  end
end
