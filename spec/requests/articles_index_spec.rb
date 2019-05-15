# frozen_string_literal: true

RSpec.describe 'GET /api/articles' do
  let!(:articles) { 3.times { FactoryBot.create(:article) } }

  it 'lists a collection of articles' do 
    get '/api/articles'
    json_resp = JSON.parse(response.body)
    expect(json_resp['articles'].count).to eq 3
  end

end
