#coding=utf-8
import xlrd
import sys
xls_name = sys.argv[1]
data = xlrd.open_workbook(xls_name)
table = data.sheets()[0]

nrows = table.nrows
for i in range(nrows):
	if i == 0:
		continue
	print '%s %s %s %s %s' %(table.row_values(i)[0], table.row_values(i)[1], table.row_values(i)[2], table.row_values(i)[3], table.row_values(i)[4])
