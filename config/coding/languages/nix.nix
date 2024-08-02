{ pkgs
, ...
}:
{
  config = {
    plugins.lsp.servers.nil-ls = {
      enable = true;
      settings.formatting.command = [ "${pkgs.nixfmt-rfc-style}/bin/nixfmt" ];
    };
    # NOTE: try to get nixd to work
  };
  # NOTE: keybind to quickly expand/collapse singleton attrs
  # TODO: fix indentation
}
