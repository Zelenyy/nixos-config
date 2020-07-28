{ config, pkgs, callPackage, ... }: {
    nixpkgs.config.pulseaudio = true;
    
    programs.nm-applet.enable = true;
    networking.networkmanager.enable = true;
    
            
    services.xserver = {
        enable = true;
        displayManager = {
            defaultSession = "xfce";
        };
        
        desktopManager = {
            xterm.enable = false;
            xfce.enable = true;
            xfce.thunarPlugins = [
                pkgs.xfce.thunar-archive-plugin
                # pkgs.xfce.thunar-dropbox-plugin
            ];
            
        };
    };
    
    environment.systemPackages = with pkgs.xfce // pkgs;
        [
        libxfce4util
        xfce4-whiskermenu-plugin
        xfce4-battery-plugin
        x11_ssh_askpass
        ];

    programs.ssh.askPassword = "\${pkgs.x11_ssh_askpass}/libexec/x11-ssh-askpass";
        
}
