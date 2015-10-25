# play controller
require 'open-uri'
require 'json'
require 'erb'
include ERB::Util

class PlayController < ApplicationController

	@@xpub_key = 'xpub6CmLL1Yyc3t8FXNxfmkenahv36EB4mbuViBu4mVo5MAx5DvbvJzZuNvZyMTiTe8ttfmGmit94yL8ELsYYD6y4A857u9tGmjyobhmzCcoPWg'
	@@callback_url = 'http://palazzo.eu-gb.mybluemix.net/play/callback'
	@@api_key = '2aba459d-420a-497c-bfbc-c99fb58dd40e'

	def entry
		uri = 'https://api.blockchain.info/v2/receive?xpub=' + @@xpub_key + '&callback=' + url_encode(@@callback_url) + '&key=' + @@api_key
		puts uri
		response = open(uri).read
		@game_address = JSON.parse(response)['address']
	end

	def callback
		p params
		render text: '*ok*' and return
	end
end

