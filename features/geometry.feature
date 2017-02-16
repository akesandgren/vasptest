Feature: Geometry optimization
    Test the different geometry optimization subroutines in VASP

    # Si (only coordinates)
    Scenario: Si-cd.opt
        Given that the POTCAR MD5 is 4e058592231fc4e091ac0c92d87797b0
        When I run VASP with a maximum of 8 ranks
        Then the total energy should be -43.37173590 +/- 1.0e-5 eV
        and the pressure should be 6.03 +/- 1.0 kB
        and the total number of SCF iterations should be 62
        and the point group symmetry should be C_1
        and the XML output should be valid
        and the number of ionic steps should be 10
        and the RMS of the coordinate differences should be 0.009393 +/- 0.001
        and the length of the A vector should be 5.42884 +/- 0.01 A
        and the length of the B vector should be 5.42884 +/- 0.01 A
        and the length of the C vector should be 5.42884 +/- 0.01 A

    # Si (only volume)
    Scenario: Si-cd.opt2
        Given that the POTCAR MD5 is 4e058592231fc4e091ac0c92d87797b0
        When I run VASP with a maximum of 8 ranks
        Then the total energy should be -42.78685824 +/- 1.0e-5 eV
        and the pressure should be 0.00 +/- 1.0 kB
        and the total number of SCF iterations should be 29
        and the point group symmetry should be C_1
        and the XML output should be valid
        and the number of ionic steps should be 4
        and the RMS of the coordinate differences should be 0.000 +/- 0.001
        and the length of the A vector should be 5.46513 +/- 0.01 A
        and the length of the B vector should be 5.46513 +/- 0.01 A
        and the length of the C vector should be 5.46513 +/- 0.01 A

    # Si (only shape)
    Scenario: Si-cd.opt3
        Given that the POTCAR MD5 is 4e058592231fc4e091ac0c92d87797b0
        When I run VASP with a maximum of 8 ranks
        Then the total energy should be -42.83835338 +/- 1.0e-5 eV
        and the pressure should be 15.97 +/- 1.0 kB
        and the total number of SCF iterations should be 33
        and the point group symmetry should be C_1
        and the XML output should be valid
        and the number of ionic steps should be 5
        and the RMS of the coordinate differences should be 0.000 +/- 0.01
        and the length of the A vector should be 5.42884 +/- 0.01 A
        and the length of the B vector should be 5.41587 +/- 0.01 A
        and the length of the C vector should be 5.44529 +/- 0.01 A

    # Si (all degrees of freedom)
    Scenario: Si-cd.opt4
        Given that the POTCAR MD5 is 4e058592231fc4e091ac0c92d87797b0
        When I run VASP with a maximum of 8 ranks
        Then the total energy should be -43.37323 +/- 1.0e-5 eV
        and the pressure should be 0.0 +/- 1.0 kB
        and the total number of SCF iterations should be 67
        and the point group symmetry should be C_1
        and the XML output should be valid
        and the number of ionic steps should be 10
        and the RMS of the coordinate differences should be 0.009393 +/- 0.001
        and the length of the A vector should be 5.4375 +/- 0.01 A
        and the length of the B vector should be 5.437457 +/- 0.01 A
        and the length of the C vector should be 5.4392 +/- 0.01 A

   # Si (conjugate gradient)
    Scenario: Si-cd.opt5
        Given that the POTCAR MD5 is 4e058592231fc4e091ac0c92d87797b0
        When I run VASP with a maximum of 8 ranks
        Then the total energy should be -43.37177186 +/- 1.0e-5 eV
        and the pressure should be 6.03 +/- 1.0 kB
        and the total number of SCF iterations should be 85
        and the point group symmetry should be C_1
        and the XML output should be valid
        and the number of ionic steps should be 18
        and the RMS of the coordinate differences should be 0.009393 +/- 0.001
        and the length of the A vector should be 5.42884 +/- 0.01 A
        and the length of the B vector should be 5.42884 +/- 0.01 A
        and the length of the C vector should be 5.42884 +/- 0.01 A
