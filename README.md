Traffic Light
=============

Traffic light is a simple tool that will take a file and display it, with some lines colored in red, yellow or green,
based on some regular expression.

Default behavior will show in:
 * green lines containing "success"
 * yellow lines containing "warning"
 * red lines containing "error" or "failure"

My initial need when I created this small tool was to spot warnings in the middle of all the output of maven.

Example usage:

    mvn clean install | tl.rb