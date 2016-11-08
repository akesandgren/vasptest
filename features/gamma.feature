Feature: Gamma Production 
    More realistic calculations. Many of the test cases have displayed problems with different compilations of VASP.
    Single Kpoint tests only.

    @gamma
    Scenario: SO3
        Given that the POTCAR MD5 is 4823c0c64273f99ca3a80cb37ea000eb
        When I run VASP with a maximum of 16 ranks
        Then the total energy should be -22.86932804 +/- 1.0e-5 eV
            and self consistency should be reached in 21 iterations
            and the XML output should be valid
   
    @gamma
    Scenario: Li2FeSiO4
        Given that the POTCAR MD5 is 3243c5963dac554bf7a70cf7328b80bf
        When I run VASP with a maximum of 64 ranks
        Then the total energy should be -434.480894 +/- 1.0e-4 eV
            and self consistency should be reached in 20 iterations
            and the pressure should be -77.83 +/- 7.0 kB
            and the point group symmetry should be C_1
            and the XML output should be valid

    @gamma
    Scenario: CeO2
        Given that the POTCAR MD5 is 94797ba316498018fa0fb446717f06f5
        When I run VASP with a maximum of 96 ranks
        Then the total energy should be -850.262131 +/- 2.0e-4 eV
            and self consistency should be reached in 31 iterations
            and the pressure should be -2.65 +/- 0.2 kB
            and the point group symmetry should be C_2v
            and the XML output should be valid
