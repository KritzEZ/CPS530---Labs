#!/usr/bin/python

import cgi, cgitb
form = cgi.FieldStorage()

name = form.getvalue('name')
address = form.getvalue('address')
number = form.getvalue('number')


print "Content-type:text/html\n\n"
print "<html>"

print "<head>"
print "<script src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js'></script>"
print "<title> Lab 6 - Python Version </title>"
print "<style> body {font-size: 100px;} span{position:relative;}</style>"
print "</head>"
print "<body>"

print "<p>Your Name: %s </p>" % name
print "<p>Your Address: %s </p>" % address

numberarr = number.split("-")

print "<p>Your Phone Number: </p> "
print "<span id='one'> (%s) </span>" % numberarr[0]
print "<span id='two'> - %s </span>" % numberarr[1]
print "<span id='three'> - %s </span>" % numberarr[2]


print "<script>"
print "	$(document).ready(function(){ "

print "$('#one').animate({height: '250px', opacity: '0.4'},'slow'); "
print "$('#one').animate({width: '250px', opacity: '0.8'},'slow'); "
print "$('#one').animate({height: '100px', opacity: '0.4'},'slow'); "
print "$('#one').animate({width: '100px', opacity: '0.8'},'slow'); "

print "$('#two').animate({width: '100px', opacity: '0.5'},'slow'); "
print "$('#two').animate({height: '100px', opacity: '0.3'},'slow'); "
print "$('#two').animate({width: '300px', opacity: '0.5'},'slow'); "
print "$('#two').animate({height: '300px', opacity: '0.3'},'slow'); "

print "$('#three').animate({height: '500px', opacity: '0.8'},'slow'); "
print "$('#three').animate({height: '500px', opacity: '0.4'},'slow'); "
print "$('#three').animate({height: '300px', opacity: '0.8'},'slow'); "
print "$('#three').animate({height: '300px', opacity: '0.4'},'slow'); });"

print "</script></body></html>"