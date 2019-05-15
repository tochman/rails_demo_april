# frozen_string_literal: true

Given('the following articles exist:') do |table|
  table.hashes.each do |article_data|
    author = Author.find_by(name: article_data[:author])
    FactoryBot.create(:article, article_data
                    .except('author')
                    .merge(author: author))
  end
end

Given('the following authors exist:') do |table|
  table.hashes.each do |author_data|
    FactoryBot.create(:author, author_data)
  end
end
