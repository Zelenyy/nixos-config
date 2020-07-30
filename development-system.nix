{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs;
        [
            gnumake 
            gcc
            gfortran
            conda
            
            # CPP
            cmake
            cmakeCurses
            qt5.full

            # Kotlin
            gradle
            gradle-completion
            maven
            jdk11
            openjfx11

            # TeX
            texlive.combined.scheme-full
            texstudio
        ];

}
