{ eachDefaultSystem
, pkgs
}:

let
  inherit (pkgs.lib) optionals;
in
rec {
  # The toolchains that I commonly use
  toolchains = import ./toolchains { inherit pkgs; };

  # Infer home directory based on system
  getHomeDirectory = username: "/home/${username}";

  # Make a custom dev environment
  mkEnv = { toolchains ? [ ], extras ? [ ], shellHook ? "" }:
    eachDefaultSystem (system: {
      devShells.default = pkgs.mkShell {
        packages = toolchains ++ extras;
        inherit shellHook;
      };
    });
}
