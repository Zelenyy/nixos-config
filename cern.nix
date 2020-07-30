{ config, pkgs, ...} : 

{
    environment.systemPackages = with pkgs; [
        root
        (geant4.override{
            enableMultiThreading = false;
            enableGDML = true;
#            enableQT = true;
            })
        geant4.data.G4ABLA
        geant4.data.G4INCL
        geant4.data.G4PhotonEvaporation
        geant4.data.G4RealSurface 
        geant4.data.G4EMLOW
        geant4.data.G4NDL
        geant4.data.G4PII
        geant4.data.G4SAIDDATA 
        geant4.data.G4ENSDFSTATE
        geant4.data.G4PARTICLEXS 
        geant4.data.G4RadioactiveDecay
    ];
}
