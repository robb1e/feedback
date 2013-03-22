# Feedback

## Getting started

Download the source code and run the following:

    	bundle
    	rake db:create db:migrate db:test:prepare
    	
Use zeus for speed, in one terminal run `zeus start` and in another run `zeus s` to run the server. Other options are available for testing, rake and such.

There are essentially three pages to this application:

		/ => root
		/group_name => feedback group controller
		/group_name/case_name => feedback case controller
