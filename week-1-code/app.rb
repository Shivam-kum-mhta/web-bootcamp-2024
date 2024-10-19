require 'sinatra'
require 'net/http'
require 'json'
require 'erb'
require 'dotenv/load' 

API_KEY = ENV['NEWSAPI_KEY'] 
BASE_URL = "https://newsapi.org/v2/top-headlines"

# Fetch from API
def fetch_headlines(query = nil)
  url = URI("#{BASE_URL}?country=us&pageSize=10&apiKey=#{API_KEY}")
  
  url.query += "&q=#{query}" if query && !query.empty?  # If query ? , add it to the URL
  
  response = Net::HTTP.get(url)
  JSON.parse(response)["articles"]
end

#root page
get '/' do
  query = params['query']  # Get query input
  articles = fetch_headlines(query)  
  erb :index, locals: { articles: articles, query: query }  # Rendering
end
