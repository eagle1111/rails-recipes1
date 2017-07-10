module Admin::EventRegistrationsHelper
  def registration_filters(options)
    params.permit(:status, :ticket_id, :department_id).merge(options)
  end
end
