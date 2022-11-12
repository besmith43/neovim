local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)

    use("wbthomason/packer.nvim")
    use("bluz71/vim-nightfly-guicolors")
    use("cocopon/iceberg.vim")
    
    use("nvim-lua/plenary.nvim") -- lua functions that many plugins use
    use('nvim-lua/popup.nvim')

    -- vim game to get better
    use("ThePrimeagen/vim-be-good")

    -- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

    -- vs-code like icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

    -- debugger interface
    -- use("puremourning/vimspector")
    
    -- treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = 'TSUpdate all' })

    -- toggle terminal
	use({"akinsho/toggleterm.nvim", tag = '*', config = function()
        end
    })

    -- cheat sheet
    use({'sudormrfbin/cheatsheet.nvim'})

    -- coc autocomplete
    use({"neoclide/coc.nvim", branch = 'release'})

    -- coc plugins
    use({"neoclide/coc-tsserver", run = 'yarn install --frozen-lockfile'})
    use({"neoclide/coc-json", run = 'yarn install --frozen-lockfile'}) -- just run :CocInstall coc-json for the first time on a new machine
    use({"neoclide/coc-html", run = 'yarn install --frozen-lockfile'})
    use({"neoclide/coc-css", run = 'yarn install --frozen-lockfile'})
    use({"fannheyward/coc-sql", run = 'yarn install --frozen-lockfile'})
    use({"yaegassy/coc-ansible", run = 'yarn install --frozen-lockfile'})
    use({"coc-extensions/coc-powershell", run = 'yarn install --frozen-lockfile'})
    use({"coc-extensions/coc-omnisharp", run = 'yarn install --frozen-lockfile'})
    use({"fannheyward/coc-rust-analyzer", run = 'yarn install --frozen-lockfile'})
    use({"josa42/coc-sh", run = 'yarn install --frozen-lockfile'})
    use({"fannheyward/coc-pyright", run = 'yarn install --frozen-lockfile'})
    use({"neoclide/coc-prettier", run = 'yarn install --frozen-lockfile'})
    use({"fannheyward/coc-markdownlint", run = 'yarn install --frozen-lockfile'})
    use({"kkiyama117/coc-toml", run = 'yarn install --frozen-lockfile'})
    use({"josa42/coc-docker", run = 'yarn install --frozen-lockfile'})
    use({"clangd/coc-clangd", run = 'yarn install --frozen-lockfile'})
    use({"voldikss/coc-cmake", run = 'yarn install --frozen-lockfile'})

    if packer_bootstrap then
        require("packer").sync()
    end
end)


