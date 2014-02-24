class TicketAbstractorClient::Client
  def initialize(base_url, security_token=nil)
    @base_url = base_url
    @security_token = security_token
  end

  def get(url, args = {}, params = {})
    params.merge! args: args.to_json
    params.merge! security_token: @security_token
    response = RestClient.get("#{@base_url}/#{url}", params: params)

    JSON.parse response
  end

  def post(url, args = {}, params = {})
    params.merge! args: args.to_json
    params.merge! security_token: @security_token
    response = RestClient.post("#{@base_url}/#{url}", params)

    JSON.parse response
  end
end
