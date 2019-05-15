# frozen_string_literal: true

RSpec.describe 'POST /api/articles' do
  let!(:thomas) { FactoryBot.create(:author, name: 'Thomas')}


  it 'allow author to create an article' do 
    post '/api/articles', params: {
      title: 'My new article',
      author_id: thomas.id
    }

    json_resp = JSON.parse(response.body)
    expect(json_resp['message']).to eq "Yay!"

  end

  it 'returns error when title is missing' do 
    post '/api/articles', params: {
      title: '',
      author_id: thomas.id
    }

    json_resp = JSON.parse(response.body)
    expect(json_resp['message']).to eq "Shoots!"

  end
end
