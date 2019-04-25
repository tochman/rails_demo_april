Given("the following articles exist:") do |table|
  table.hashes.each do |article_data|
    binding.pry
    Article.create(article_data)
  end
end