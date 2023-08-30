class ErrorModel  
  include Swagger::Blocks

  swagger_schema :ErrorModel do
    key :required, %i[code message]
    property :code do
      key :type, :integer
      key :format, :int32
    end
    property :message do
      key :type, :string
    end
  end
end

class SubmitSparql
  include Swagger::Blocks

  swagger_path '/query' do
    operation :post do
      key :summary, 'Submit SPARQL'
      key :description, 'submit sparql'
      key :operationId, 'submit_sparql'
      key :produces, [
        'application/json'
      ]
      response 200 do
        key :description, 'results'
      end
    end
  end
end

