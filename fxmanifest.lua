fx_version 'cerulean'
game 'gta5'

author 'Vamma'
description 'Realistic(ish) cars & accidents'
version '1.0.1'

data_file 'HANDLING_FILE' 'handling.meta'

files {
    'Newtonsoft.Json.dll',
    'handling.meta',
    'data/save.json'
}

client_script 'MyResource.net.dll'
server_script 'server.net.dll'