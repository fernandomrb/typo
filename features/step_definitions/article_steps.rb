Given(/the following articles exists$/) do |articles_list|
  user = User.last
  articles_list.hashes.each do |article|
    user.articles.create(article)
  end
  #raise Article.all.inspect
end
