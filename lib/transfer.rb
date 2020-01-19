class Transfer
  attr_accessor :transfer, :bank_account
  
  def initialize(transfer, bank_account, amount)
    @transfer = "pending"
    @bank_account = bank_account
    @amount = amount
    
  end 
end
