# Horace Yip 10184901
#!/bin/bash

find . -type f -executable | xargs sed '/bash/a #Developed in cisc220' $i
