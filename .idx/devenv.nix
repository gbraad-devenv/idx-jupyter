{ pkgs, ... }: {
  
  channel = "stable-23.11";
  packages = [
    pkgs.python311
    pkgs.python311Packages.pip
  ];

  env = {};

  idx = {
      extensions = [
        "ms-python.debugpy"
        "ms-python.python"
        "ms-toolsai.jupyter"
        "ms-toolsai.jupyter-keymap"
        "ms-toolsai.jupyter-renderers"
        "ms-toolsai.vscode-jupyter-cell-tags"
        "ms-toolsai.vscode-jupyter-slideshow"
      ];

    previews = {
      enable = true;
      previews = {
      };
    };

    workspace = {
      onCreate = {
        create-venv = ''
          python -m venv .venv
          source .venv/bin/activate
          pip install ipykernel
        '';
      };
      onStart = {
      };
    };
  };
  
}
