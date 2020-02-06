class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status  
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end 
  
  def valid?
    if @sender.valid? && @receiver.valid? 
      true 
    else 
      false 
    end 
    
  end 
  
  def execute_transaction 
    if @sender.balance < @amount 
      "Transaction rejected.  Please check your account funds."
    else 
      @status == "Transaction completed."
      
  end 
  
  
  
  
end
