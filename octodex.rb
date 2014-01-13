=begin
	@author Rex Finn <rexcfinn@gmail.com>
	@version 1.0
	@link http://github.com/OctodexAPI/octodex-ruby
	@package octodex-ruby
=end

# require open-uri, which is a wrapper for Net:HTTP
require 'open-uri'
# require JSON, which allows us to turn the JSON into an array
require 'json'


class Octodex
	# the URL to the API - strings will be appended for specification
	$baseURL = 'https://octodexapi.herokuapp.com/'

	# Fetches the complete octodex
	# @return the complete octodex as an array
	
	def completeOctodex
		cURL($baseURL)
	end

	# Fetches a random octocat
	# @return the single octocat as an array
	
	def randomOctocat
		cURL($baseURL+"?random")
	end

	# Fetches an octocat by its number
	# @param int number - the number of the octocat
	# @return the single octocat as an array

	def numberedOctocat (number)
		cURL($baseURL+"?number=#{number}")
	end

	protected
	
	# Performs all cURLs that are initated in each function, protected function
	# @param string endpoint is the URL of the cURL
	# @return the JSON as a parsed array
	
	def cURL (endpoint)
		# use open-uri to perform a GET request and then use JSON to parse it
		JSON.parse(open(endpoint).read)
	end

end