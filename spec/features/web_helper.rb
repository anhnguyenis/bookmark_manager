require './app'
require 'pg'

def setup_table
# connection = PG.connect(dbname: 'bookmark_manager_test')
# connection.exec('DROP TABLE IF EXISTS bookmarks;')
# connection.exec('CREATE TABLE bookmarks(id SERIAL PRIMARY KEY,url VARCHAR(60));')
# connection.exec("INSERT INTO bookmarks(url) VALUES('http://www.makersacademy.com')")
# connection.exec("INSERT INTO bookmarks(url) VALUES('www.bbc.co.uk')")
# connection.exec("INSERT INTO bookmarks(url) VALUES('http://google.com')")

Bookmark.add(url: "http://www.makersacademy.com") #replaces web_helper named setup_table
Bookmark.add(url: "http://www.bbc.co.uk")
Bookmark.add(url: "http://www.google.com")
end
