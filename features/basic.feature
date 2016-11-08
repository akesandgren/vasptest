Feature: Basic tests
    Run small VASP calculations and check basic properties

    Scenario: Fe-bcc
        Given that the POTCAR MD5 is adbd1768cd2384d3107d7a5469a5da60
        When I run VASP with a maximum of 8 ranks
        Then the total energy should be -8.21160822 +/- 1.0e-5 eV
        and self consistency should be reached in 16 iterations
        and the Fermi energy should be 9.629837 +/- 0.01 eV
        and the pressure should be -15.74 +/- 0.1 kB
        and the xx component of the stress tensor should be -15.73858 +/- 0.1 kB
        and the yy component of the stress tensor should be -15.73858 +/- 0.1 kB
        and the zz component of the stress tensor should be -15.73858 +/- 0.1 kB
        and the xy component of the stress tensor should be 0.0 +/- 0.01 kB
        and the magnetic moment should be 2.2095 +/- 0.01 uB
        and the point group symmetry should be O_h
        and the XML output should be valid

    Scenario: Cu-fcc
        Given that the POTCAR MD5 is c0bee2102db6fbd2eac4c56c950af4c4
        When I run VASP with a maximum of 8 ranks
        Then the total energy should be -3.78259936 +/- 1.0e-5 eV
        and self consistency should be reached in 12 iterations
        and the Fermi energy should be 6.927426 +/- 0.01 eV
        and the pressure should be -28.78 +/- 0.1 kB
        and the xx component of the stress tensor should be -28.78316 +/- 0.1 kB
        and the yy component of the stress tensor should be -28.78316 +/- 0.1 kB
        and the zz component of the stress tensor should be -28.78316 +/- 0.1 kB
        and the xy component of the stress tensor should be 0.0 +/- 0.01 kB
        and the point group symmetry should be O_h
        and the XML output should be valid

    Scenario: Si-cd    
        Given that the POTCAR MD5 is 4e058592231fc4e091ac0c92d87797b0
        When I run VASP with a maximum of 8 ranks
        Then the total energy should be -43.38161546 +/- 1.0e-5 eV
        and self consistency should be reached in 13 iterations
        and the Fermi energy should be 5.557075 +/- 0.01 eV
        and the pressure should be 7.54 +/- 0.1 kB
        and the xx component of the stress tensor should be 7.53916 +/- 0.1 kB
        and the yy component of the stress tensor should be 7.53916 +/- 0.1 kB
        and the zz component of the stress tensor should be 7.53916 +/- 0.1 kB
        and the xy component of the stress tensor should be 0.0 +/- 0.01 kB
        and the point group symmetry should be T_d
        and the XML output should be valid

    Scenario: TiO2-rutile    
        Given that the POTCAR MD5 is a073d00a2cb4305cb2c614d4723dc91a
        When I run VASP with a maximum of 8 ranks
        Then the total energy should be -53.08563778 +/- 1.0e-5 eV
        and self consistency should be reached in 18 iterations
        and the pressure should be -189.29 +/- 0.1 kB
        and the xx component of the stress tensor should be -99.47008 +/- 0.1 kB
        and the yy component of the stress tensor should be -99.60928 +/- 0.1 kB
        and the zz component of the stress tensor should be -368.78858 +/- 0.1 kB
        and the xy component of the stress tensor should be 1.01728 +/- 0.01 kB
        # Note: the cell is deliberately set up to not have full D2h symmetry
        and the point group symmetry should be C_1
        and the XML output should be valid
