# play controller
require 'open-uri'
require 'json'
require 'erb'
include ERB::Util

class PlayController < ApplicationController

	def entry
		uri = 'https://api.blockchain.info/v2/receive?xpub=' + xpub_key + '&callback=' + url_encode(callback_url) + '&key=' + api_key
		puts uri
		response = open(uri).read
		@game_address = JSON.parse(response)['address']
	end

	def callback
		p params
		logger.info params.to_s
		render text: '*ok*' and return
	end
end

