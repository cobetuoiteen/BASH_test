#!/bin/bash

echo nhap vao 1 so nguyen tu 0 toi 1
read num_in

case "$num_in" in 
	"0") echo ban vua nhap vao so 0;;
	"1") echo ban vua nhap vao so 1;;
	*) echo so ban vua nhap khong hop le;;
esac
