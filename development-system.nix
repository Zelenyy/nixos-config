{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs;
        [ 
            gcc
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

    # System-wide python
    with pkgs;
    let
        my-python-packages = python-packages: with python-pakages; 
        [
            numpy
            scipy
            matplotlib
            pandas
            pytables
        ];
        python-with-my-pkgs = python3.withPackages my-python-packages;
        enviroment.systemPackeges = [python-with-my-pkgs];
    in ...
    
}
