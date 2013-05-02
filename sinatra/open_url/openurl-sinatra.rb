require 'sinatra'

require 'net/http'
require 'uri'

get '/works' do
	"Works!"
end

get '/google' do
	save_to_file "http://www.google.com"
end

get '/rss' do
	save_to_file "http://feeds.feedburner.com/elise/simplyrecipes"
end

private

def save_to_file(uri_string)
	uri = URI.parse(uri_string)
	response = Net::HTTP.get_response(uri)
	#puts response

	http = Net::HTTP.get(uri)
	
	File.open('output.xml', 'w') { |file| file.write(http.to_str) }

	$stdout.puts "saved to file"
	"Done!"
end