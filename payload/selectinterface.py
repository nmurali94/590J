import os
route = os.popen("route").read()
routeresultlist = route.split("\n")
print(routeresultlist[2].split()[-1])