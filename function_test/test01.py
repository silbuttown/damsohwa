from test_function import scan

line = scan('test')
gas,flame,bright,soil,humid,temp = line.split(',')
print("gas : {} flame : {} bright : {} soil : {} humid : {} temp : {}".format(gas,flame,bright,soil,humid,temp))