# feature 'Bookmarks' do
#   scenario 'returns the list of bookmarks' do
#   visit ('/')
#   click_on 'Show all Bookmarks'
#   expect(page).to have_content "www.google.co.uk"
#   expect(page).to have_content "www.bbc.co.uk"
#   expect(page).to have_content "www.makersacademy.com"
#   end
# end

feature 'View bookmarks' do
  scenario 'returns the list of bookmarks' do
  #setup_table
  Bookmark.add(url: "http://www.makersacademy.com") #replaces web_helper named setup_table
  Bookmark.add(url: "http://www.bbc.co.uk")
  Bookmark.add(url: "http://www.google.com")
  visit ('/bookmarks')
  expect(page).to have_content "http://google.com"
  expect(page).to have_content "www.bbc.co.uk"
  expect(page).to have_content "http://www.makersacademy.com"
  expect(page).not_to have_content "www.radiotimes.co.uk"
  end
end
