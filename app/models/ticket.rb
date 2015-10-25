class Ticket
	attr_accessor :source_address, :transaction_hash, :amount, :spent

	def initialize(source_address, transaction_hash, amount, spent)
		@source_address = source_address
		@transaction_hash = transaction_hash
		@amount = amount
		@spent = spent
	end
end
