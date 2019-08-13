feature 'The landing page' do
  scenario 'prompts you to introduce a url' do
    visit('/')
    expect(page).to have_content 'Do you have a long URL for me? 🤔'
  end
  scenario 'contains a text box' do
    visit('/')
    expect(page).to have_field("url")
  end
  scenario 'contains a button' do
    visit('/')
    expect(page).to have_selector(:link_or_button, 'submit')
  end
end
