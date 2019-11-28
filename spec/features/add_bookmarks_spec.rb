
feature 'Add bookmarks' do
  scenario 'saves a bookmark' do
    #setup_table
    Bookmark.add(url: "http://www.makersacademy.com") #replaces web_helper named setup_table
    Bookmark.add(url: "http://www.bbc.co.uk")
    Bookmark.add(url: "http://www.google.com")
    visit ('/add-bookmark')
    fill_in "url", with: "www.myspace.com"
    click_button("Submit")
    visit ('/bookmarks')
    expect(Bookmark.all).to have_content "www.myspace.com"
  end
end
