import subprocess

IPrange = "192.168.217"

for ip in range(1,255):
    command = "dig @192.168.217.149 -x {}.{}".format(IPrange, ip)
    result = subprocess.run(command, capture_output=True, shell=True)
    print(result.stdout)
    print("\n\n")