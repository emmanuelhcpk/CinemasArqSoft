json.array!(@funcions) do |funcion|
  json.extract! funcion, :id
  json.url funcion_url(funcion, format: :json)
end
