class Ticket
	attr_accessor :source_address, :transaction_hash, :amount

	def initialize(source_address, transaction_hash, amount)
		@source_address = source_address
		@transaction_hash = transaction_hash
		@amount = amount
	end
end
