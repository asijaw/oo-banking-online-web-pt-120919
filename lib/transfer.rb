class Transfer
  attr_accessor :transfer, :bank_account, :sender
  
  def initialize(sender, bank_account, amount)
    @sender = sender
    @bank_account = bank_account
    @amount = amount
    @transfer = "pending"
  end 
end
