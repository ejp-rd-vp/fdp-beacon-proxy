require './lib/fdp'

def set_routes(classes: allclasses)
  get '/fdp-beacon-proxy' do
    content_type :json
    response.body = JSON.dump(Swagger::Blocks.build_root_json(classes))
  end

  post '/fdp-beacon-proxy/query' do
    content_type :json
    @results = query_fdp(endpoint: @request_payload['endpoint'], query: @request_payload['queryString'])
    erb :sparql_results
  end

  before do
    request.body.rewind
    @request_payload = JSON.parse('{}')
    if request.body.length > 0
      @request_payload = JSON.parse request.body.read
    end
  end
end
