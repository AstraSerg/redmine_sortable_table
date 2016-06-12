Sortable Tables
---------------

The plugin adds ability to sort any tables in redmine pages.

Based on [unobtrusive table sort script](http://www.frequency-decoder.com/2006/09/16/unobtrusive-table-sort-script-revisited), big thanks to Brian McAllister.

Related links
-------------

http://www.redmine.org/issues/1718
http://www.redmine.org/boards/3/topics/7130?r=33666#message-33666
http://www.redmine.org/boards/2/topics/15058?r=16625#message-16625

Usage
-----

Just add sortable class to column header like this:

	|_(sortable). Column 1 |_(sortable-numeric). Column 2 |_. Unsortable |
	| bbbb | 12 |something |
	| aaaa | 24 |anything  |
	| cccc | 9  |nothing   |

Possible sortable classes:

	sortable
	sortable-text
	sortable-date
	sortable-keep
	sortable-date-dmy
	sortable-numeric
	sortable-currency
	sortable-sortByTwelveHourTimestamp
	sortable-sortIPAddress
	sortable-sortEnglishLonghandDateFormat
	sortable-sortScientificNotation
	sortable-sortImage
	sortable-sortFileSize
	sortable-sortAlphaNumeric
	sortable-sortEnglishDateTime 

Feel free to modify CSS and JS under `<redmine dir>/plugins/redmine_sortable_table/assets/`
Don't forget to restart redmine for the changes to take effect.

Installation
------------

1. `cd <redmine dir>/plugins`
2. `git clone https://github.com/AstraSerg/redmine_sortable_table.git`
3. `bundle exec rake redmine:plugins RAILS_ENV=production`
4. restart your redmine

How it work
-----------

The plugin adds the javascript and the stylesheets to redmine pages to handle sortable class.

What’s new in this fork
-----------------------

* Adapted to modern redmine versions. Tested on 3.2.1 3.1.0 3.0.4 2.6.6

Uninstall
---------

1. `bundle exec rake redmine:plugins:migrate NAME=redmine_sortable_table VERSION=0 RAILS_ENV=production`
2. `rm -rf <redmine dir>/plugins/redmine_sortable_table`
3. restart your redmine

