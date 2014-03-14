class TicketAbstractorClient::ILoggerClient < TicketAbstractorClient::Client
  def get_incidents(query, limit, offset)
    get 'ilogger/incidents', { query: query, limit: limit, offset: offset }
  end
end