#!/usr/bin/perl
use CGI ':standard';
print "Content-type: text/html\n\n";
print "<html> <head>\n";
print "<title> CGI - Part 2</title>\n";
print "<link href='https://fonts.googleapis.com/css?family=Courgette' rel='stylesheet'> \n";
print "<style>\n";
print "body {  text-align: center; font-family: 'Courgette', cursive; font-size: 250%; color: white; background-image: url(https://hdqwalls.com/download/1/boat-aerial-view-from-sky-3f-2048x1152.jpg)}\n";
print "</style>\n";
print "<body>\n";

$firstname = param('FirstName');
$lastname = param('LastName');
$gender = param('gender');
$agegroup = param('age');
@days = param('weekdays');

print "<h1> Welcome To Your Profile! </h1>";
print "Hello $firstname $lastname, <br>";
print "You state your gender is: $gender. <br>";
print "You are a $agegroup according to your age. <br>";
print "Your favourite weekdays is/are: @days.";


print "</body>\n";
print "</html>\n";