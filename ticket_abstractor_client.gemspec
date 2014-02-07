require File.expand_path("../lib/ticket_abstractor_client/version", __FILE__)

Gem::Specification.new do |s|
  s.name = 'ticket_abstractor_client'
  s.version = TicketAbstractorClient::VERSION
  s.authors = ['rsamoilov']
  s.email = ['rsamoilov@productengine.com']
  s.homepage = "http://github.com/rsamoilov/ticket_abstractor_client"
  s.summary = 'Client for the Ticket Abstractor service'
  s.description = 'Get access to Jira and Brouha ticketing systems through the single service'
  s.license = 'MIT'

  s.files = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "README.md"]
  s.require_path = 'lib'

  s.add_dependency 'rest-client', '~> 1.6.7'
end
