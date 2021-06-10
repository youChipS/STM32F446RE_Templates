(I'm developing in Ac6 System Workbench for STM32)
Instructions for installing this IDE can be found here:
https://www.openstm32.org/Installing%2BSystem%2BWorkbench%2Bfor%2BSTM32%2Bfrom%2BEclipse

To run all unit tests:

1. Go to the debug folder: (not ideal but works for now)
cd {Project Workspace Location}/mySTM32ProjUt/Debug

2. Run the binary: (Sample output at end of file)
./mySTM32ProjUt

3. ??

4. Profit

Development notes:

Started this project with the goal of using gtest and STM32 because I already have experience with gtest and I'm already beginning to work with STM32 so this was the most interesting platform.

I started by creating a STM32 sample project for the STM32F446RE and a sample project for google test using the gtest framework.

After reviewing options it didn't seem practical to integrate the unit test on the embedded platform for a number of reasons. One reason being that gtest is built with C++ and my project for STM32 is in C. I don't think that the target project should be ported to C++ for the sake fo unit testing and I prefer C for embedded development unless there is a good reason to use C++. There may be other solutions but it seems messy. 

Another reason is that unit testing on the embedded target will likely be bugging, slow and generally unreliable given the usual inconsistency of embedded hardware. The unit tests really just need to test the logic and the embedded target should be used to test the hardware/drivers. These functions can be and should be separated if possible to simplify and isolate troubleshooting.

After some trial and error and research I found that the best solution seems to be along the lines of creating three projects:
    1. The main embedded target project.
    2. A static library project containing all non-embedded files that will be unit tested
    3. The unit test project that will run on a desktop platform (I'm using Ubuntu 17.04 and x86)

First, I created the main embedded target project (shell project with a stub math function for testing).
Then I created the googletest project (this took slightly more trial and error to find the minimal setup)
Next, I created the static library project and move the stub math function from the main embedded target project to this project.
I then needed to make sure that both the target project and the googletest project could link to the static library project and build successfully. I did this by creating a configuration for each, one that build in C for the target project and another that build in C++ for the googletest project and linking the projects accordingly in the build properties.

After both the target and googletest projects were able to link and build properly with the static library I needed to get the gtest framework to run the C unit tests. I did this by borrowing (stealing) some C adapter code from here:
https://www.distek.com/blog/using-google-test-unit-test-c-code/ 
(Thanks, Mike!)

This code seems to work at first glance. This is the first time I'm running gtest for C so may review the source later.

Currently, the project builds and will generate a linux binary in the Debug folder after buliding that can be executed on the platform to run all unit tests.

All in all, this seems to be a good stopping point for a proof-of-concept but there can be several impovements made to make this more professional.

Possible Improvements:

If I continued with this there are several improvements that come to mind:

1. Investigate using Unity. I'm not sure that using gtest is the best since it appears that we need to adapt the framework with helpers in order to test the C source. If Unity is all in C then testing could be implemented more clearly with this framework.
2. Include stubbing of any hardware functionality that isn't unit-testable.
3. Add a python script to run unit tests
   - Can have options to run one, a subset or all unit tests.
          I think I'd need to generated binaries to each UnitTest in addition to the binaries for all of the unit tests.
4. A python script to generate unit test frameworks.
5. A python script for building the projects simultaneously
6. Possibly link the embedded target project to the googletest unit test project directly. I don't want to do this right now because I feel like having a separate static project is a little clearer at the moment but it would be nice to have all of the target files directly in the target project.

x. I'm sure there are others, let me know if you have any suggestions.



---- SAMPLE OUTPUT -----

[==========] Running 4 tests from 1 test suite.
[----------] Global test environment set-up.
[----------] 4 tests from myMath
[ RUN      ] myMath.add_PASS
[       OK ] myMath.add_PASS (0 ms)
[ RUN      ] myMath.add_FAIL
../UnitTest/gtest_c_helpers/gtest_helper.cpp:30: Failure
Expected equality of these values:
  expected
    Which is: 0
  actual
    Which is: 1
../UnitTest/gtest_c_helpers/gtest_helper.cpp:30: Failure
Expected equality of these values:
  expected
    Which is: 0
  actual
    Which is: 1
../UnitTest/gtest_c_helpers/gtest_helper.cpp:30: Failure
Expected equality of these values:
  expected
    Which is: 1
  actual
    Which is: 2
[  FAILED  ] myMath.add_FAIL (0 ms)
[ RUN      ] myMath.mult_PASS
[       OK ] myMath.mult_PASS (0 ms)
[ RUN      ] myMath.mult_FAIL
../UnitTest/gtest_c_helpers/gtest_helper.cpp:30: Failure
Expected equality of these values:
  expected
    Which is: 1
  actual
    Which is: 0
../UnitTest/gtest_c_helpers/gtest_helper.cpp:30: Failure
Expected equality of these values:
  expected
    Which is: 1
  actual
    Which is: 0
../UnitTest/gtest_c_helpers/gtest_helper.cpp:30: Failure
Expected equality of these values:
  expected
    Which is: 1
  actual
    Which is: 0
../UnitTest/gtest_c_helpers/gtest_helper.cpp:30: Failure
Expected equality of these values:
  expected
    Which is: 0
  actual
    Which is: 1
[  FAILED  ] myMath.mult_FAIL (0 ms)
[----------] 4 tests from myMath (0 ms total)

[----------] Global test environment tear-down
[==========] 4 tests from 1 test suite ran. (0 ms total)
[  PASSED  ] 2 tests.
[  FAILED  ] 2 tests, listed below:
[  FAILED  ] myMath.add_FAIL
[  FAILED  ] myMath.mult_FAIL

 2 FAILED TESTS
