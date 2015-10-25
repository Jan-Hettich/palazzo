# ticket_controller
require 'open-uri'
require 'json'
require 'erb'
include ERB::Util

class TicketController < ApplicationController
	def index
		uri = 'https://blockchain.info/multiaddr?active=' + xpub_key
		response = open(uri).read
		txns = JSON.parse(response)["txs"]
		@tickets = []
		txns.each do |t|
			byebug
			source_address = t["inputs"][0]["prev_out"]["addr"]
			transaction_hash = t["hash"]
			amount = t["balance"]
			@tickets << Ticket.new(source_address, transaction_hash, amount)
		end
		@tickets
	end
end