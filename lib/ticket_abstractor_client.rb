module TicketAbstractorClient
  def self.initialize_client(url, security_token = nil)
    @url = url
    @security_token = security_token
    @jira_client = @brouha_client = @itrc_client = nil

    self
  end

  def self.jira
    @jira_client ||= JiraClient.new(@url, @security_token)
  end

  def self.brouha
    @brouha_client ||= BrouhaClient.new(@url, @security_token)
  end

  def self.itrc
    @itrc_client ||= ItrcClient.new(@url, @security_token)
  end
end

require 'rest_client'
require 'ticket_abstractor_client/version'
require 'ticket_abstractor_client/client'
require 'ticket_abstractor_client/jira_client'
require 'ticket_abstractor_client/brouha_client'
require 'ticket_abstractor_client/itrc_client'
