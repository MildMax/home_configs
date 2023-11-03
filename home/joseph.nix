{
  pkgs,
  osConfig,
  ...
}: {
  imports = [
  ];
	
  programs.git = {
    enable = true;
    lfs.enable = true;
    userEmail = ""; #"joesph@protonmail.com";
    userName = "MildMax";
    #extraConfig = {
    #  commit.gpgsign = true;
    #  user.signingkey = "${osConfig.users.users."joseph".home}/.ssh/id_ed25519.pub";
    #  gpg = {
    #    format = "ssh";
    #    ssh.allowedSignersFile = "${osConfig.users.users."joseph".home}/.ssh/allowed_signers";
    #  };
    #};
  };

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
      plugins = ["git" "docker" "kubectl" "helm"];
    };
  };

  home = {
    username = "joeburns";
    homeDirectory = "/Users/joeburns";
    #file."${osConfig.users.users."joseph".home}/.ssh/allowed_signers".text = "* ${builtins.readFile "${osConfig.users.users."joseph".home}/.ssh/id_ed25519.pub"}";
    packages = with pkgs; [
      gh
      sshfs
    ];
    stateVersion = "23.05";
  };
}
