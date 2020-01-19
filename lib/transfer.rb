class Transfer
  attr_accessor :transfer, :bank_account, :sender, :receiver
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @transfer = "pending"
  end 
end
