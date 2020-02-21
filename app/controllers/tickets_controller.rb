class TicketsController < ApplicationController
  # before_action :authorized, only: [:persist]

  def index
    @tickets = Ticket.all
    render json: @tickets
  end

  def create
    # byebug
    @ticket = Ticket.create(ticket_params)
    # if @Ticket
      render json: {ticket: @ticket}
    # else
    #   render json: {error: "Ticket not created"}
    # end
  end

  private

  def ticket_params
    params.permit(:title, :description, :deadline, :status, :category, :attach_link, :project_id)
  end

end
