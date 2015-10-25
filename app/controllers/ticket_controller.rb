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
		@active_tickets = []
		txns.each do |t|
			source_address = t["inputs"][0]["prev_out"]["addr"]
			transaction_hash = t["hash"]
			amount = t["result"]
			spent = t["out"][0]["spent"]
			@active_tickets << Ticket.new(source_address, transaction_hash, amount, spent) unless spent
		end
		@active_tickets
	end

	def winner
	end
end