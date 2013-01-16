
function update_ninja (token, device, data)

  local ninja = http.request({
  	method='put',
  	url='https://api.ninja.is/rest/v0/device/' .. device .. '?user_access_token=' .. token,
  	data = '{ "DA" : "'.. data ..'" }',
    headers = { ['Content-Type'] = 'application/json' }
  	}).statuscode
  end

end