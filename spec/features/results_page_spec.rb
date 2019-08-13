feature 'The results page' do
  scenario 'contains the original url' do
    visit('/')
    fill_in :url, with: 'http://example.com'
    click_button 'submit'
    expect(page).to have_content 'This original url is waaaay too long: http://example.com 👎'
  end
  scenario 'entertains you' do
    visit('/')
    fill_in :url, with: 'http://example.com'
    click_button 'submit'
    expect(page).to have_content 'Some magic happenning ...⌛️...👨‍💻'
  end
  scenario 'offers the short url' do
    visit('/')
    fill_in :url, with: 'http://example.com'
    click_button 'submit'
    expect(page).to have_content 'Try this short url instead: ➡️'
  end
end
