local g = vim.g


g.rooter_patterns = {
  '.git', '_darcs', '.hg', '.bzr', '.svn',
  'Makefile', 'package.json',
  'go.mod', 'go.work'
}
