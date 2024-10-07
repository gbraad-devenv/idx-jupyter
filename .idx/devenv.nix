{ pkgs, ... }: {
  channel = "stable-23.11";

  packages = [
    pkgs.python311
    pkgs.python311Packages.pip
  ];

  env = {};
  idx = {

    extensions = [
      "ms-toolsai.jupyter"
      "ms-python.python"
    ];
    
    workspace = {
      onCreate = {
        create-venv = ''
          python -m venv .venv
          source .venv/bin/activate
          pip install -r requirements.txt
        '';
      };
    };

    previews = {};
  };
}
