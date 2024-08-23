return {
    'stevearc/dressing.nvim',
    event = 'VeryLazy',
    config = function() 
        local dressing = require('dressing')

        dressing.setup({
            input = {
                enabled = false
            }
        })
    end
}
