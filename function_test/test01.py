from test_function import Scan

line = Scan('test')
gas,flame,bright,soil,humid,temp = line.split(',')
print("gas : {} flame : {} bright : {} soil : {} humid : {} temp : {}".format(gas,flame,bright,soil,humid,temp))
