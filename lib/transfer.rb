class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  @@all = []
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    
    @trans_instance = [sender, receiver, amount]
    @@all << @trans_instance
  end
  
  def valid?
    if self.sender.valid? && self.receiver.valid?
      true
    else 
      false
    end
  end
  
  def execute_transaction
    if self.valid? && self.status == "pending"
      self.sender.balance - amount
      self.receiver.deposit(amount)
      self.status = "complete"
    elsif self.status == "complete"
      "This transaction has already been completed."
    
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
    
  end

  
end
