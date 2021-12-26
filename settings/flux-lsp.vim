augroup vim_lsp_settings_flux_lsp
  au!
  LspRegisterServer {
      \ 'name': 'flux-lsp',
      \ 'cmd': {server_info->lsp_settings#get('flux-lsp', 'cmd', [lsp_settings#exec_path('flux-lsp')]+lsp_settings#get('flux-lsp', 'args', []))},
      \ 'root_uri':{server_info->lsp_settings#get('flux-lsp', 'root_uri', lsp_settings#root_uri('flux-lsp'))},
      \ 'initialization_options': lsp_settings#get('flux-lsp', 'initialization_options', v:null),
      \ 'allowlist': lsp_settings#get('flux-lsp', 'allowlist', ['flux']),
      \ 'blocklist': lsp_settings#get('flux-lsp', 'blocklist', []),
      \ 'config': lsp_settings#get('flux-lsp', 'config', lsp_settings#server_config('flux-lsp')),
      \ 'workspace_config': lsp_settings#get('flux-lsp', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('flux-lsp', 'semantic_highlight', {}),
      \ }
augroup END
