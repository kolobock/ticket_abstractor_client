class TicketAbstractorClient::BrouhaClient < TicketAbstractorClient::Client
  def get_issue(issue_key)
    get "ticket/brouha/#{issue_key}"
  end

  def create_issue(params = {})
    post "ticket/brouha", params
  end

  def list_products(params = {})
    get "brouha/products", params
  end

  def list_services(params = {})
    get "brouha/services", params
  end

  def list_desks(params = {})
    get "brouha/desks", params
  end
end
