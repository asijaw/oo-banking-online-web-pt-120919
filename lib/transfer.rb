class Transfer
  attr_accessor :status, :bank_account, :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end 
  
  def valid?
    self.bank_account.valid?
  end
end
