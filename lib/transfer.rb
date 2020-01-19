class Transfer
  attr_accessor :status, :bank_account, :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end 
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if valid?
      sender.balance -= amount
      receiver.balance += amount
    end
  end 
end
