= rhunspell

* http://github.com/tiendung/rhunspell

== DESCRIPTION:

Simplest Ruby binding for Hunspell spelling checking library

== FEATURES/PROBLEMS:

* checking
* suggesting

== SYNOPSIS:
	
	require 'rhunspell'
	
	dict = Hunspell.new("names.aff", "names.dic")

	dict.check("acetech") # => true
	dict.check("abcxyz")  # => false

	dict.suggest("azetach") # => ["acetech"]

== REQUIREMENTS:

* RubyInline

== INSTALL:
* curl -O http://nchc.dl.sourceforge.net/sourceforge/hunspell/hunspell-1.2.7.tar.gz
	tar -zxvf hunspell-1.2.7.tar.gz
	cd hunspell-1.2.7
	./configure
	make
	sudo make install


* sudo gem install RubyInline

* sudo gem rhunspell

== LICENSE:

(The MIT License)

Copyright (c) 2008 Tien Dung

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.