{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # development
    python3
    rustup
    lua
    nodejs
    actionlint
    gitmoji-cli
    pre-commit
    git
    gcc
    zig

    # gui apps
    gimp
    _1password-gui
    obsidian

    # cli apps
    glow # render markdown on the cli
    krew
    kubectl

    # utils
    neofetch
    yadm
    rsync
    rclone
    ffmpeg-full
    nix-diff
    p7zip
  ];
}
