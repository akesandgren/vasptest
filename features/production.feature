Feature: Production
    More realistic calculations. Many of the test cases have displayed problems with different compilations of VASP.

    Scenario: MgMoS
        Given that the POTCAR MD5 is b2b680bb74dbd3d9ba691a82343c4a95
        When I run VASP with a maximum of 16 ranks
        Then the total energy should be -114.896037 +/- 1.0e-5 eV
            and self consistency should be reached in 15 iterations
            and the pressure should be -13.09 +/- 1.0 kB
            and the point group symmetry should be C_1
            and the XML output should be valid

    Scenario: PbO2
        Given that the POTCAR MD5 is 0489a4d9cc2584afa60e7c636674e788
        When I run VASP with a maximum of 24 ranks
        Then the total energy should be -63.174224 +/- 1.0e-5 eV
            and self consistency should be reached in 14 iterations
            and the pressure should be 63.11 +/- 5.0 kB
            and the point group symmetry should be S_2
            and the XML output should be valid

