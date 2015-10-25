# play controller
# require 'open-uri'
# require 'json'

class PlayController < ApplicationController

	@@xpub_key = 'xpub6CmLL1Yyc3t8FXNxfmkenahv36EB4mbuViBu4mVo5MAx5DvbvJzZuNvZyMTiTe8ttfmGmit94yL8ELsYYD6y4A857u9tGmjyobhmzCcoPWg'
	@@callback_url = 'http://palazzo.eu-gb.mybluemix.net/callback'
	@@api_key = '2aba459d-420a-497c-bfbc-c99fb58dd40e'

	def entry
		# uri = 'https://api.blockchain.info/v2/receive?' + @@xpub_key + '&callback=' + @@callback_url + '&key=' + @@api_key
		# response = open(uri)
		# raise "no receive address returned from blockchain.info" if response.status != 200
		# json_response = response.body
		# hash = JSON.parse(json_response)
		@game_address = 'foo' #hash['address']
	end
end