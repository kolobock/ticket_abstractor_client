class TicketAbstractorClient
  def initialize(url)
    @url = url
  end

  def jira
    @jira_client ||= JiraClient.new(@url)
  end

  def brouha
    @brouha_client ||= BrouhaClient.new(@url)
  end

  def itrc
    @itrc ||= ItrcClient.new(@url)
  end
end

require 'rest_client'
require 'ticket_abstractor_client/client'
require 'ticket_abstractor_client/jira_client'
require 'ticket_abstractor_client/brouha_client'
require 'ticket_abstractor_client/itrc_client'
