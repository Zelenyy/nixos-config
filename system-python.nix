{config, pkgs, ...} : 

{
    environment.systemPackages =
        with pkgs;     
        let
            my-python-packages = python-packages: with python-packages; [
                numpy
                scipy
                matplotlib
                pandas
                numba
                tables
                tabulate
                ipython
                jupyter
                plotly
                uproot
                pip
                pyqt5
            ];
            python-with-my-pkgs = python3.withPackages my-python-packages;
        in [python-with-my-pkgs];
    
}
