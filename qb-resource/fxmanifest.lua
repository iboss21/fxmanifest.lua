-- Resource Metadata
fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Your Name <your.email@example.com>'
description 'Your Resource Description'
version '1.0.0'

-- What to run
client_scripts {
    'client.lua',
    'client_two.lua'
}
server_script 'server.lua'

-- Extra data can be used as well
my_data 'one' { two = 42 }
my_data 'three' { four = 69 }

-- Due to Lua syntax, the following works too:
my_data('nine')({ ninety = "nein" })

-- Metadata keys can be arbitrary
pizza_topping 'pineapple'

-- UI Page
ui_page 'html/index.html'
file 'html/index.html'

-- Data Files
files {
    'audio/mywaves/stupidcar.awc',
    'myvehicles.meta',
    'metas/*_handling.meta',
}

data_file 'AUDIO_WAVEPACK' 'audio/mywaves'
data_file 'VEHICLE_METADATA_FILE' 'myvehicles.meta'
data_file 'HANDLING_FILE' 'metas/*_handling.meta'

-- Server Constraints
dependencies {
    '/server:4500',                -- requires at least server build 4500
    '/policy:subdir_file_mapping', -- requires the server key to have 'subdir_file_mapping' granted
    '/onesync',                    -- requires state awareness to be enabled
    '/gameBuild:h4',               -- requires at least game build 2189
    '/native:0xE27C97A0',          -- requires native 0xE27C97A0 to be supported
}

-- Provide
provide 'mysql-async'

-- Disable C# Task Scheduler
clr_disable_task_scheduler 'yes'

-- Convar Category
convar_category 'Your Category Name' {
    "Your Convar Configuration Options",
    {
        { "Your Convar Name", "your_convar", "CV_STRING", "default_value" },
        -- Add more convars as needed
    }
}
