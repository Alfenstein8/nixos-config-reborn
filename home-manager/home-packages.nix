{
  pkgs,
  unstablePkgs,
  inputs,
  ...
}: let
  # Create a customized version of logseq
  logseq-patch = pkgs.logseq.override {
    electron_27 = pkgs.electron_36;
  };
in {
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [ "electron-33.4.11" ];

  home.packages = with pkgs;
    [
      # Desktop apps
      anki
      imv
      mpv
      obs-studio
      obsidian
      pavucontrol
      teams-for-linux
      vesktop
      bitwarden
      firefox
      element-desktop
      beeper
      thunderbird
      logseq-patch
      inputs.zen-browser.packages.${pkgs.system}.beta
      filelight
      mullvad-vpn
      stremio

      # kodi
      (pkgs.kodi-wayland.withPackages (kodiPkgs:
        with kodiPkgs; [
          youtube
          netflix
          a4ksubtitles
        ]))

      # Gaming
      steam
      lutris
      heroic
      bottles
      mangohud
      protonup

      # CLI utils
      bc
      bottom
      brightnessctl
      cliphist
      ffmpeg
      ffmpegthumbnailer
      fzf
      git-graph
      grimblast
      htop
      btop
      hyprpicker
      ntfs3g
      mediainfo
      microfetch
      playerctl
      ripgrep
      showmethekey
      silicon
      udisks
      ueberzugpp
      unzip
      w3m
      wget
      wl-clipboard
      wtype
      yt-dlp
      zip
      tree
      dua
      zoxide
      tealdeer
      wireguard-tools
      tailscale

      # Coding stuff
      openjdk23
      nodejs
      python311
      pyenv
      cargo
      luarocks
      yarn
      yazi
      lua
      fd
      gnumake
      opam

      # Nix config
      alejandra
      nixd

      # WM stuff
      libsForQt5.xwaylandvideobridge
      libnotify
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland

      # Other
      bemoji
      nix-prefetch-scripts
      iwd
      networkmanagerapplet
    ]
    ++ (with unstablePkgs; [
      neovim
      tidal-hifi
      nextcloud-client
    ]);
}
