require 'bookmark'
require 'features/web_helper'

describe Bookmark do
  before (:each) do
    # setup_table
    Bookmark.add(url: "http://www.makersacademy.com") #replaces web_helper named setup_table
    Bookmark.add(url: "http://www.bbc.co.uk")
    Bookmark.add(url: "http://www.google.com")
  end
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include "http://google.com"
      expect(bookmarks).to include "www.bbc.co.uk"
      expect(bookmarks).to include "http://www.makersacademy.com"
    end
  end

end
