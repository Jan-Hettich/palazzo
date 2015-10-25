class ApplicationController < ActionController::Base
  protect_from_forgery

	def xpub_key
		'xpub6CmLL1Yyc3t8FXNxfmkenahv36EB4mbuViBu4mVo5MAx5DvbvJzZuNvZyMTiTe8ttfmGmit94yL8ELsYYD6y4A857u9tGmjyobhmzCcoPWg'
	end

	def callback_url
		'http://palazzo.eu-gb.mybluemix.net/play/callback'
	end

	def api_key
		'2aba459d-420a-497c-bfbc-c99fb58dd40e'
	end
end
