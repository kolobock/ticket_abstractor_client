class TicketAbstractorClient::BrouhaClient < TicketAbstractorClient::Client
  def get_issue(issue_key)
    get "ticket/brouha/#{issue_key}"
  end

  def create_issue(params = {})
    post "ticket/brouha", params
  end

  def list_product_services(params = {})
    get 'brouha/list_product_services', params
  end
end
