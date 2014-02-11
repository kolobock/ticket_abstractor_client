# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ticket_abstractor_client/version'

Gem::Specification.new do |s|
  s.name = 'ticket_abstractor_client'
  s.version = TicketAbstractorClient::VERSION
  s.authors = ['rsamoilov']
  s.email = ['rsamoilov@productengine.com']
  s.homepage = "http://github.com/rsamoilov/ticket_abstractor_client"
  s.summary = 'Client for the Ticket Abstractor service'
  s.description = 'Get access to Jira and Brouha ticketing systems through the single service'
  s.license = 'MIT'

  s.files = Dir["{lib}/**/*.rb", "LICENSE", "README.md"]
  s.require_path = 'lib'

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"

  s.add_dependency 'rest-client', '~> 1.6.7'
end
