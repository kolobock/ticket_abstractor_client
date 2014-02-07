class JiraClient < Client
  ##
  # Get jira issue by issue id
  #
  # == Parameters:
  # issue_key:
  #   issue id in jira
  # includes:
  #   can be either 'comments', 'customfields' or both; defaults to []
  #
  # == Example:
  #   >> client.jira.get_issue 'IFS-123', ['comments']
  #   => { 'id' => 'IFS-123', 'description' => '...', ... }
  def get_issue(issue_key, includes = [])
    includes = [includes] unless includes.is_a? Array
    get "ticket/jira/#{issue_key}", include: includes.to_json # TODO: includes
  end

  ##
  # Get the status of jira issue by issue id
  #
  # == Parameters:
  # issue_key:
  #   issue id in jira
  #
  # == Example:
  #   >> client.jira.get_issue_status 'IFS-123'
  #   => 'Resolved'
  def get_issue_status(issue_key)
    get_issue(issue_key)['status']
  end

  def get_issues_by_query(query)
    get 'jira/get_issues_by_query', query: query
  end

  def get_users_by_query(query)
    get 'jira/get_users_by_query', query: query
  end

  def get_issues_statuses_by_search_query(issues_id)
    get 'jira/get_issues_statuses_by_search_query', issues_id: issues_id
  end

  ##
  # Get issues by jira filter
  #
  # == Parameters:
  # filter_id:
  #   filter id in jira
  #
  # == Example:
  #   >> client.jira.get_issues_by_filter 24320
  #   => [{ 'id' => 'ID-1', ... }, { 'id' => 'ID-2', ... }]
  def get_issues_by_filter(filter_id)
    get 'jira/get_issues_by_filter', filter_id: filter_id
  end

  def get_fields_by_project(project_key)
    get 'jira/get_fields_by_project', project_key: project_key
  end

  def create_ticket(opts = {})
    post 'jira/create_ticket', opts: opts
  end

  def update_ticket(opts = {})
    post 'jira/update_ticket', opts: opts
  end

  def add_comment(issue_key, comment)
    post 'jira/add_comment', issue_key: issue_key, comment: comment
  end
end
