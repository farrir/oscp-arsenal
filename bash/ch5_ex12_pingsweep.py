import sys
import os

IPrange = sys.argv[1]
startIP = int(sys.argv[2])
endIP = int(sys.argv[3])

for ip in range(startIP, endIP):
    target = "{}.{}".format(IPrange, ip)
    response = os.system("ping -c 1 {} > /dev/null".format(target))
    if response == 0:
        print(target)