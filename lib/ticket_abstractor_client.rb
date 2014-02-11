module TicketAbstractorClient
  def self.initialize_client(url)
    @url = url
    self
  end

  def self.jira
    @jira_client ||= JiraClient.new(@url)
  end

  def self.brouha
    @brouha_client ||= BrouhaClient.new(@url)
  end

  def self.itrc
    @itrc ||= ItrcClient.new(@url)
  end
end

require 'rest_client'
require 'ticket_abstractor_client/version'
require 'ticket_abstractor_client/client'
require 'ticket_abstractor_client/jira_client'
require 'ticket_abstractor_client/brouha_client'
require 'ticket_abstractor_client/itrc_client'
