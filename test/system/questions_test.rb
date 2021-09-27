require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "Asking a question to the coach" do
    visit ask_url
    fill_in "question", with: "hello"
    click_on "Ask"
    assert_text "I don't care, get dressed and go to work!"
  end

  test "Making a question to the coach" do
    visit ask_url
    fill_in "question", with: "how are you?"
    click_on "Ask"
    assert_text "Silly question, get dressed and go to work!"
  end

  test "If you are going to work" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"
    assert_text "Great!"
  end

  test "Link to ask" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"
    assert_text "Great!"
  end

  # test "returning to /ask" do
  #   visit answer_url
  #   click_link('Ask a new question')
  #   expect(page).to have_content('Ask your coach anything')
  # end
end
