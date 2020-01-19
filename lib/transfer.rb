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
  
  def rejected
    @status = "rejected"
    "Transaction rejected. Please check your account balance."
  end 
  
  def execute_transaction
    if valid? && @status == "pending"
      sender.balance -= amount
      if sender.valid? == true 
        receiver.balance += amount
        @status = "complete"
      else
        rejected
      end
    else
     rejected
    end
  end 
  
  def reverse_transfer
    sender.balance += amount
    receiver.balance -= amount
    @status = "reversed"
  end
end
