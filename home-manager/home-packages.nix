{ pkgs, ... }: 
let
  # Create a customized version of logseq
  logseq-patch = pkgs.logseq.override {
    electron_27 = pkgs.electron_34;
  };
in
{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
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
    steam
    element-desktop
    beeper
    thunderbird
    logseq-patch
    # nextcloud-client

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

    # Coding stuff
    openjdk23
    nodejs
    python311

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    bemoji
    nix-prefetch-scripts
  ];
}
