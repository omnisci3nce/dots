-- bootstrap lazy.nvim
require("omni/lazy_bootstrap")

-- my settings and mappings
require("omni")
require("omni/set")
require("omni/remap")

-- load plugins
require("lazy").setup("plugins")
