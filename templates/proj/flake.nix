{
  description = "Local dev environment";

  inputs = { nome.url = "github:espentrydal/nome"; };

  outputs = { self, nome, ... }:
    nome.lib.mkEnv {
      toolchains = with nome.lib.toolchains;
        node ++ protobuf ++ rust;
      extras = with nome.pkgs; [ jq ];
      shellHook = ''
        echo "Welcome to this Nix-provided project env!"
      '';
    };
}
