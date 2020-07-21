{ config, pkgs, callPackage, ... }: {
    nixpkgs.config.pulseaudio = true;
    
    services.xserver = {
        enable = true;
        desktopManager = {
            default = "xfce";
            xterm.enable = false;
            xfce.enable = true;
        };
    };
    
#    environment.systemPackages = with pkgs;
#        [
#        xfce.ristretto
#        xfce.parole
#        xfce.mousepad
#        xfce.libxfce4ui
#        xfce.libxfce4util
#        ];
}
