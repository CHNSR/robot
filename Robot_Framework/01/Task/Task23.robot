*** Test Cases ***
Parallel Test 1 
    Log To Console     Running Test 1
    
Parallel Test 2
    Log To Console    Running Test 2

Parallel Test 3
    Log To Console    Running Test 3

#Pabot Command parallel test
#Run 3 files together(พร้อมกัน)
#pabot path/to/test1.robot path/to/test2.robot path/to/test3.robot |run multifile
#pabot path/to/tests/ | one file
#pabot --processes 3 C:/Users/chano/Desktop/Robot_Freamwork/Task/Task23.robot |1 file and run 4 test together


