class BrouhaClient < Client
  def get_issue(issue_key)
    get 'ticket/brouha/#{issue_key}'
  end
end
