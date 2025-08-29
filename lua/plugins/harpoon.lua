return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>ha",
      function()
        require("harpoon"):list():add()
      end,
      desc = "Add to harpoon",
    },
    {
      "<leader>ho",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Open harpoon UI",
    },
    {
      "<M-j>",
      function()
        require("harpoon"):list():next()
      end,
      desc = "Next harpoon mark",
    },
    {
      "<M-k>",
      function()
        require("harpoon"):list():prev()
      end,
      desc = "Previous harpoon mark",
    },
  },
  config = function()
    require("harpoon"):setup()
  end,
}
