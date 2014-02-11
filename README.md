# TicketAbstractorClient

Client for accessing to a TicketAbstractor service.

## Installation

Add this line to your application's Gemfile:

    gem 'ticket_abstractor_client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ticket_abstractor_client

## Usage

Initialize:

    client = TicketAbstractorClient.initialize_client('http://ticket.abstractor.url')

Access clients:

    client.jira
    client.brouha
    client.itrc

### Jira

Grab issue:

    client.jira.get_issue 'IFS-123'
    client.jira.get_issue_status 'IFS-123' => 'Open'
    
Create issue (summary, description and issuetype fields are required):

    options = { project: "IFS", summary: "Summary", description: "Desc", issuetype: "Bug"}
    client.jira.create_issue options

Create issue with an attachment:

    options = { project: "IFS", summary: "Summary", description: "Desc", issuetype: "Bug"}
    attachment = File.new('file.png', 'rb')
    client.jira.create_issue options, attachment
    
Update issue (issuekey field is required):

    client.jira.update_issue({ issuekey: 'IFS-46728', description: 'new description' })
    
Attach the file to issue:

    attachment = File.new('file.png', 'rb')
    client.jira.update_issue({ issuekey: 'IFS-46728' }, attachment)
    
### Brouha

Grab issue:

    client.brouha.get_issue '12'
    
### iTRC

Find apps:

    client.itrc.list_apps
    client.itrc.find_app 'itrc'
    
Find app_groups:

    client.itrc.list_app_groups
    client.itrc.find_app_group 'app-mgmt-tools'
    
Find business units:

    client.itrc.list_business_units
    client.itrc.find_business_unit 3
    
Find departments:

    client.itrc.list_departments
    client.itrc.find_department 4
    

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
