# Horace Yip 10184901
#!/bin/bash

lsblk -b -n | sort -k4 -r -g | head -n 2
