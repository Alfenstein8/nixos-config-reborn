{pkgs, ...}: let
  # Fetch your Neovim config from GitHub
  myNvimConfig = builtins.fetchGit {
    url = "git@github.com:Alfenstein8/NormalNvim.git";
    # It's crucial to pin to a specific commit hash for reproducibility
    # You can get the latest commit hash from your repo's commits page
    rev = "b55ec3cbd63fd81bfedd49ae9d80798625e8276b"; # <--- IMPORTANT: Replace with your actual commit hash
  };
in {
  # programs.neovim = {
  #   enable = true;
  # };

  # Symlink the fetched config to ~/.config/nvim
  home.file.".config/nvim" = {
    source = myNvimConfig;
    recursive = true;
  };
}
