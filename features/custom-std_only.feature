Feature: Custom modifications
    Test some NSC/SNIC custom modifications of the VASP binaries

    # Check that VASP can find the global vdW kernel file
    Scenario: Si-vdW
        Given that the POTCAR MD5 is 4e058592231fc4e091ac0c92d87797b0
        When I run VASP with a maximum of 8 ranks
        Then the total energy should be -32.00040089 +/- 1.0e-5 eV
            and self consistency should be reached in 12 iterations
            and the Fermi energy should be 5.530596 +/- 0.01 eV
            and the pressure should be 19.38 +/- 0.1 kB
            and the point group symmetry should be T_d
            and the XML output should be valid

