class TicketAbstractorClient::ILoggerClient < TicketAbstractorClient::Client
  def get_incidents(query_params)
    get 'ilogger/incidents', { query_params: query_params }
  end
end