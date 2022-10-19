fx_version 'cerulean'
game 'gta5'

author 'Vamma'
description 'Player effects, car destruction & repair & a lot more'
version '1.1.0'

data_file 'HANDLING_FILE' 'handling.meta'

files {
    'Newtonsoft.Json.dll',
    'handling.meta',
    'save.json',
}

client_script 'MyResource.net.dll'
server_script 'server.net.dll'