-- dashboard.lua

local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- ASCII Art Header
dashboard.section.header.val = {
  " ███╗   ██╗██╗   ██╗██╗███╗   ███╗ ",
  " ████╗  ██║██║   ██║██║████╗ ████║ ",
  " ██╔██╗ ██║██║   ██║██║██╔████╔██║ ",
  " ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  " ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  " ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
}

-- Dashboard Buttons with emojis
dashboard.section.buttons.val = {
  dashboard.button("e", "📄  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "🔍  Find file", ":Telescope find_files<CR>"),
  dashboard.button("r", "🕘  Recent files", ":Telescope oldfiles<CR>"),
  dashboard.button("s", "👀  Settings", ":e $MYVIMRC<CR>"),  -- Settings button
  dashboard.button("q", "❌  Quit Neovim", ":qa<CR>"),
}

-- Function to return a random quote from a list
local function random_quote()
  local quotes = {
    "Do one thing every day that scares you.",
    "Strive not to be a success, but rather to be of value.",
    "You miss 100% of the shots you don’t take.",
    "Success is walking from failure to failure with no loss of enthusiasm.",
    "Your time is limited, don’t waste it living someone else’s life.",
    "In the middle of difficulty lies opportunity.",
    "The only way to do great work is to love what you do.",
    "The best way to predict the future is to create it.",
    "Life is what happens when you’re busy making other plans.",
    "Don’t watch the clock; do what it does. Keep going.",
    "Believe you can and you’re halfway there.",
    "It’s not whether you get knocked down, it’s whether you get up."
  }
  math.randomseed(os.time())
  return quotes[math.random(#quotes)]
end

-- Set the footer with a random quote
dashboard.section.footer.val = random_quote()

-- Setup the dashboard configuration
alpha.setup(dashboard.config)

