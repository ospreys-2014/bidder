class Ticket
  def winners
    Event.first.bids.select { |bid| bid > 20 }
  end
end


p Ticket.new.winners
