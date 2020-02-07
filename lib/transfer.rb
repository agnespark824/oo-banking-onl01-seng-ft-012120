class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  @@all
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @@all << 
    
    @trans_instance << 
  end
  
  def valid?
    if self.sender.valid? && self.receiver.valid?
      true
    else 
      false
    end
  end
  
  def execute_transaction
    if self.valid?
      self.sender.balance - amount
      self.receiver.deposit(amount)
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
    
  end

  
end
