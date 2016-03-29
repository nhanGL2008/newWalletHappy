json.array!(@wallets) do |wallet|
  json.extract! wallet, :id, :name, :balance
  json.url wallet_url(wallet, format: :json)
end
