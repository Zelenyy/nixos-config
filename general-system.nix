{ config, ... }:

{

    # networking.networkmanager.enable = true;
    
    services.xserver = {
        xkbModel = "microsoft";
        layout = "us,ru(winkeys)";
        xkbOptions = "grp:toggle,grp_led:scroll";
        xkbVariant = "winkeys";
    };
    
    nixpkgs.config.allowUnfree = true;
    
    programs.ssh.startAgent = true;
            
}
