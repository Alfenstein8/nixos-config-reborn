{
  nix.settings = {
    substituters = ["https://hyprland.cachix.org"];
    trusted-substituters = ["https://hyprland.cachix.org"];
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./env.nix
    ./home-manager.nix
    ./hyprland.nix
    ./kernel.nix
    ./mime.nix
    ./net.nix
    ./nh.nix
    ./nix.nix
    ./timezone.nix
    ./user.nix
    ./zram.nix
    ./steam.nix
    ./gamemode.nix
    ./waydroid.nix
    ./keyring.nix
    ./tailscale.nix
  ];
}
