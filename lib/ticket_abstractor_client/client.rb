class TicketAbstractorClient::Client
  def initialize(base_url)
    @base_url = base_url
  end

  def get(url, args = {}, params = {})
    params.merge! args: args.to_json
    response = RestClient.get("#{@base_url}/#{url}", params: params)

    JSON.parse response
  end

  def post(url, args = {}, params = {})
    params.merge! args: args.to_json
    response = RestClient.post("#{@base_url}/#{url}", params)

    JSON.parse response
  end
end
