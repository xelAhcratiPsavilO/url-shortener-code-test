feature 'The landing page' do
  scenario 'prompts you to introduce a url' do
    visit('/')
    expect(page).to have_content 'Do you have a long URL for me? 🤔'
  end
end
