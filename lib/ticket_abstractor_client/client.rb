class Client
  def initialize(base_url)
    @base_url = base_url
  end

  def get(url, params = {})
    response = RestClient.get("#{@base_url}/#{url}", params: { args: params.to_json })
    JSON.parse response
  end

  def post(url, params = {})
    response = RestClient.post("#{@base_url}/#{url}", args: params.to_json)
    JSON.parse response
  end
end
