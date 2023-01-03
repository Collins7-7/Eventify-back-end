class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :no_of_tickets, :amount_paid, presence: true

  after_create :update_event_ticket_count

  def update_event_ticket_count
    event.update(remaining_tickets: event.total_tickets - no_of_tickets)
  end
end
