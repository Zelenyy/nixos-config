{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs;
        [ 
            # Core utils
            coreutils-full
            bash
            bash-completion
            nix-bash-completions
            wget
            zip
            unzip
            htop
            vim
            xclip
            kate
            gksu
            
            # Console utils
            neofetch
            tmux

            # Browsers
            firefox
            chromium

            # Image utils
            gimp
            imagemagick
            ghostscript
            pdf2svg
            kdeApplications.kruler

            # Office utils
            libreoffice
            evince
            galculator
            # adobe-reader
            
            # Multymedia
            libsForQt5.vlc
            
            
            
            # Development utils
            git
            mercurial_4
            hdf5
            h5utils
            pandoc
            kdiff3
            vscode
            
            # Cloud utils
            dropbox
            yandex-disk
            
            # Scientific tools
            hdfview
            
            # Messenger
            slack
            skypeforlinux
            
            
        ];
}
