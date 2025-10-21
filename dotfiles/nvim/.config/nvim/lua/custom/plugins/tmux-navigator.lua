return {
  'christoomey/vim-tmux-navigator',
  lazy = false,
  cmd = {
    'TmuxNavigateLeft',
    'TmuxNavigateDown',
    'TmuxNavigateUp',
    'TmuxNavigateRight',
    'TmuxNavigatePrevious',
  },
  keys = {
    { '<A-h>', '<cmd>TmuxNavigateLeft<cr>', desc = 'Navigate left' },
    { '<A-j>', '<cmd>TmuxNavigateDown<cr>', desc = 'Navigate down' },
    { '<A-k>', '<cmd>TmuxNavigateUp<cr>', desc = 'Navigate up' },
    { '<A-l>', '<cmd>TmuxNavigateRight<cr>', desc = 'Navigate right' },
  },
}
