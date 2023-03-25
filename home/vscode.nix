{ pkgs }:

let
  font = "CascadiaCode";
  terminalFont = "Iosevka";
  colorTheme = "GitHub Dark Dimmed";
  iconTheme = "material-icon-theme";

  inherit (pkgs.vscode-utils) buildVscodeMarketplaceExtension;

  extension = { publisher, name, version, sha256 }:
    buildVscodeMarketplaceExtension {
      mktplcRef = { inherit name publisher sha256 version; };
    };
in
{
  enable = true;
  extensions = with pkgs.vscode-extensions; [
    # Provided by Nixpkgs
    redhat.vscode-yaml
    rust-lang.rust-analyzer
    tamasfe.even-better-toml
    yzhang.markdown-all-in-one

    (extension {
      publisher = "TheNuProjectContributors";
      name = "vscode-nushell-lang";
      version = "1.0.0";
      sha256 = "sha256-2FHAFh4ipYKegir7o59Ypb78MOzy2iu+3p3aUUgsatw=";
    })
    (extension {
      publisher = "moalamri";
      name = "inline-fold";
      version = "0.1.10";
      sha256 = "sha256-HTqlY790lS+L6yWfDV27VhLNHu4TMzwVNiP8cNzDTjM=";
    })
    (extension {
      publisher = "GitHub";
      name = "github-vscode-theme";
      version = "6.3.2";
      sha256 = "sha256-CbFZsoRiiwSWL7zJdnBcfrxuhE7E9Au2AlQjqYXW+Nc=";
    })
    (extension {
      publisher = "enkia";
      name = "tokyo-night";
      version = "0.9.4";
      sha256 = "sha256-pKokB6446SR6LsTHyJtQ+FEA07A0W9UAI+byqtGeMGw=";
    })
    (extension {
      publisher = "ekelley";
      name = "midnight-synth";
      version = "2.1.1";
      sha256 = "sha256-rMdGPSiAFnL8X6UcovPMIwvXs0rSTaxWKJdaYXAaVJc=";
    })
    (extension {
      publisher = "wesbos";
      name = "theme-cobalt2";
      version = "2.3.0";
      sha256 = "sha256-GOLETJuBi4aiikR4nfj2BFAF91oZTlTjc4waYnIR9yk=";
    })
    (extension {
      publisher = "ahmadawais";
      name = "shades-of-purple";
      version = "7.1.5";
      sha256 = "sha256-FdMCmSMB3HOrqBt111kCrqFLT0VnymEfmWiuSR/buvc=";
    })
    (extension {
      publisher = "codestackr";
      name = "codestackr-theme";
      version = "0.0.9";
      sha256 = "sha256-nA79yJiBtHJ75DIe6FntGagbRoan8WlXdLG/c1vtMBs=";
    })
    (extension {
      publisher = "antfu";
      name = "unocss";
      version = "0.49.4";
      sha256 = "sha256-rB7UiJRJ0ZQ138NR3mMqWhH5aao+1elnh7yd2u4GP0g=";
    })
    (extension {
      publisher = "atomiks";
      name = "moonlight";
      version = "0.10.6";
      sha256 = "sha256-2Du/2rLWZUMo746rVWnngj0f0/H/94bt3rF+G+3Ipqw=";
    })
    (extension {
      publisher = "jq-syntax-highlighting";
      name = "jq-syntax-highlighting";
      version = "0.0.2";
      sha256 = "sha256-Bwq+aZuDmzjHw+ZnIWlL4aGz6UnqxaKm5WUko0yuIWE=";
    })
    (extension {
      publisher = "csstools";
      name = "postcss";
      version = "1.0.9";
      sha256 = "sha256-5pGDKme46uT1/35WkTGL3n8ecc7wUBkHVId9VpT7c2U=";
    })
    (extension {
      publisher = "HashiCorp";
      name = "HCL";
      version = "0.2.1";
      sha256 = "sha256-5dBLDJ7Wgv7p3DY0klqxtgo2/ckAHoMOm8G1mDOlzZc=";
    })
    (extension {
      publisher = "HashiCorp";
      name = "terraform";
      version = "2.23.0";
      sha256 = "sha256-3v2hEf/cEd7NiXfk7eJbmmdyiQJ7bWl9TuaN+y5k+e0=";
    })
    (extension {
      publisher = "vstirbu";
      name = "vscode-mermaid-preview";
      version = "1.6.3";
      sha256 = "sha256-rFYXFxzqtk2fUPbpijlQBbRdtW7bkAOxthUTzAkaYBk=";
    })
    (extension {
      publisher = "astro-build";
      name = "astro-vscode";
      version = "0.29.1";
      sha256 = "sha256-fMeEeYCZuORhZRds0A8HjHPncK0+SQbV0+f/zU5AIg4=";
    })
    (extension {
      publisher = "dzhavat";
      name = "bracket-pair-toggler";
      version = "0.0.2";
      sha256 = "sha256-2u+bdXU9nU1C8X3hpi7FfI2en4mlgWRPIVzcZrgGzPo=";
    })
    (extension {
      publisher = "golang";
      name = "Go";
      version = "0.35.1";
      sha256 = "sha256-MHQrFxqSkcpQXiZQoK8e+xVgRjl3Db3n72hrQrT98lg=";
    })
    (extension {
      publisher = "ms-vscode";
      name = "makefile-tools";
      version = "0.5.0";
      sha256 = "sha256-oBYABz6qdV9g7WdHycL1LrEaYG5be3e4hlo4ILhX4KI=";
    })
    (extension {
      publisher = "B4dM4n";
      name = "nixpkgs-fmt";
      version = "0.0.1";
      sha256 = "sha256-vz2kU36B1xkLci2QwLpl/SBEhfSWltIDJ1r7SorHcr8=";
    })
    (extension {
      publisher = "PenumbraTheme";
      name = "penumbra";
      version = "0.3.0";
      sha256 = "sha256-2XbPG1o1u/P49m3V9X+KkMJgw3g8IaT0YigiKFgoM/0=";
    })
    (extension {
      publisher = "bufbuild";
      name = "vscode-buf";
      version = "0.5.0";
      sha256 = "sha256-ePvmHgb6Vdpq1oHcqZcfVT4c/XYZqxJ6FGVuKAbQOCg=";
    })
    (extension {
      publisher = "brettm12345";
      name = "nixfmt-vscode";
      version = "0.0.1";
      sha256 = "sha256-8yglQDUc0CXG2EMi2/HXDJsxmXJ4YHvjNjTMnQwrgx8=";
    })
    (extension {
      publisher = "RobbOwen";
      name = "synthwave-vscode";
      version = "0.1.11";
      sha256 = "sha256-nHs9qJCKiG12sw4Hj7St86AcQJsKKx+l9mlRNSrFWOQ=";
    })
    (extension {
      publisher = "whizkydee";
      name = "material-palenight-theme";
      version = "2.0.2";
      sha256 = "sha256-//EpXe+kKloqbMIZ8kstUKdYB490tQBBilB3Z9FfBNI=";
    })
    (extension {
      publisher = "amatiasq";
      name = "sort-imports";
      version = "6.3.1";
      sha256 = "sha256-w02bnJH3wfZsTMwDbrlc6UdVhh+equqnF9cnkOhQciU=";
    })
    (extension {
      publisher = "PKief";
      name = "material-icon-theme";
      version = "4.19.0";
      sha256 = "sha256-RBXs7S0iyuutUn11hFqc0VyTs4NFDFLBRvY0u8id86s=";
    })
    (extension {
      publisher = "EditorConfig";
      name = "EditorConfig";
      version = "0.16.4";
      sha256 = "sha256-j+P2oprpH0rzqI0VKt0JbZG19EDE7e7+kAb3MGGCRDk=";
    })
    (extension {
      publisher = "sdras";
      name = "night-owl";
      version = "2.0.1";
      sha256 = "sha256-AqfcVV9GYZ+GLgusXfij9z4WzrU9cCHp3sdZb0i6HzE=";
    })
    (extension {
      publisher = "ms-vscode";
      name = "vscode-typescript-next";
      version = "5.0.202302090";
      sha256 = "sha256-LTB3lwu712Rxmi3hDGHP+l1DnQSjuy2fORf1df37d08=";
    })
    (extension {
      publisher = "bradlc";
      name = "vscode-tailwindcss";
      version = "0.8.6";
      sha256 = "sha256-v15KuD3eYFCsrworCJ1SZAMkyZKztAwWKmfwmbirleI=";
    })
  ];
  #keybindings = [];

  userSettings = {
    "[cue]" = {
      "editor.defaultFormatter" = "jallen7usa.vscode-cue-fmt";
    };
    "[mdx]" = {
      "editor.formatOnSave" = false;
    };
    "[nix]" = {
      "editor.defaultFormatter" = "B4dM4n.nixpkgs-fmt";
    };
    "[rust]" = {
      "editor.defaultFormatter" = "rust-lang.rust-analyzer";
    };
    "[terraform]" = {
      "editor.defaultFormatter" = "hashicorp.terraform";
      "editor.formatOnSave" = false;
      "editor.codeActionsOnSave" = {
        "source.formatAll.terraform" = true;
      };
    };
    "[terraform-vars]" = {
      "editor.defaultFormatter" = "hashicorp.terraform";
      "editor.formatOnSave" = false;
      "editor.codeActionsOnSave" = {
        "source.formatAll.terraform" = true;
      };
    };
    "[toml]" = {
      "editor.defaultFormatter" = "tamasfe.even-better-toml";
    };
    "[txt]" = {
      "editor.formatOnSave" = false;
    };
    "debug.javascript.unmapMissingSources" = true;
    "editor.defaultFormatter" = "esbenp.prettier-vscode";
    "editor.detectIndentation" = false;
    "editor.fontFamily" = font;
    "editor.fontLigatures" = true;
    "editor.formatOnPaste" = false;
    "editor.formatOnSave" = true;
    "editor.insertSpaces" = true;
    "editor.rulers" = [ 80 100 ];
    "editor.tabSize" = 2;
    "emmet.showExpandedAbbreviation" = "never";
    "emmet.showSuggestionsAsSnippets" = false;
    "eslint.options" = {
      "extensions" = [ ".js" ".jsx" ".md" ".mdx" ".ts" ".tsx" ".vue" ];
    };
    "eslint.validate" = [
      "markdown"
      "mdx"
      "javascript"
      "typescript"
    ];
    "inlineFold.supportedLanguages" = [
      "javascript"
      "javascriptreact"
      "typescript"
    ];
    "search.exclude" = {
      "**/.direnv" = true;
      "**/.git" = true;
      "**/node_modules" = true;
      "*.lock" = true;
    };
    "sort-imports.default-sort-style" = "module";
    "sort-imports.languages" = [
      "javascript"
      "javascriptreact"
      "typescript"
      "typescriptreact"
    ];
    "terminal.integrated.fontFamily" = terminalFont;
    "workbench.colorTheme" = colorTheme;
    "workbench.iconTheme" = iconTheme;
  };
  userTasks = { };
}

