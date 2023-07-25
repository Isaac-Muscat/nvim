require("telescope").setup {
  defaults = {
    -- Your regular Telescope's options.
    file_ignore_patterns = {"/venv/"}
  },
  extensions = {
    recent_files = {
        only_cwd = true,
    }
  }
}

-- Load extension.
require("telescope").load_extension("recent_files")
