import os
import commands
#script that mounts all the drives connected
def mount():
	devices = commands.getstatusoutput("ls /dev/sd*")[1].split("\n")	

	for i in devices:
		if i[7]!='a':
			os.system("udisksctl mount -b %s"%i)
	os.system("i3-nagbar -t warning -m 'Drives mounted' ")


if __name__ == "__main__":
	mount()
