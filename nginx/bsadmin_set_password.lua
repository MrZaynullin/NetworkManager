-- bsadmin_set_password.lua

local ngx = require "ngx"
local apr = require "apr"
 
local bsname=ngx.arg[1]
local base64_password='BASE64_PASSWORD'
local password=apr.base64_decode(base64_password)

return apr.base64_encode(bsname .. 'adm:' .. password)
