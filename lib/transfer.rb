class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
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
      
  end

  
end
