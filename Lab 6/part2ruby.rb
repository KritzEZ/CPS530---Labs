#!/usr/bin/ruby -w

print "Content-type: text/html\n\n"
require "cgi"
cgi = CGI.new("html5")


puts "<html>"
puts "<head>"

puts "<script src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js'></script>"
puts "<title>Lab 6 - Ruby Version</title>"

puts "<style> body { font-size: 50px; } 
    span {display:none;float: left;} </style>"

puts "</head><body>"

puts "<p>Your Name: " + cgi['name'] + "</p>"
puts "<p>Your Address: " + cgi['address'] + "</p>"

numberarr = cgi['number'].split("-")
puts "<p>Your Phone Number: </p>"
puts "<span id='one'>" + "(" + numberarr[0] + ")-" + "</span>" + "<span id='two'>" + numberarr[1] + "-</span>" + "<span id='three'>" + numberarr[2] + "</span>"
puts "<script>"

puts <<SCRIPT
$(document).ready(function(){
		var span1 = $("#one");
		var span2 = $("#two");
		var span3 = $("#three");
		
		span1.fadeIn(3000).css("color", "red"); 
		span2.fadeIn(5000).css("color", "green");
		span3.fadeIn(8000).css("color", "orange");
});
SCRIPT
puts "</script></body></html>"