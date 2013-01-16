Ninja = class(

function(a,token, device)
   a.token = token
   a.device = device
end

)

function Ninja:eyes(color)
    
    local status = http.request({
     	method='put',
     	url='https://api.ninja.is/rest/v0/device/' .. a.device .. '?user_access_token=' .. a.token,
     	data = '{ "DA" : "'.. color ..'" }',
       headers = { ['Content-Type'] = 'application/json' }
     	}).statuscode
     	
     return status
end