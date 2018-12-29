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
	fromuser = table.row_values(i)[0]
	fromtab = table.row_values(i)[1]
	touser = table.row_values(i)[2]
	totab = table.row_values(i)[3]
	where = table.row_values(i)[4]
	print '%s %s %s %s %s' %(fromuser, fromtab, touser, totab, where)
