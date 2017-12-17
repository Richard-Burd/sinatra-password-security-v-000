##[08:05:51] (master) sinatra-password-security-v-000
##// ♥ bundle exec rake Sugar:Zaza:console
x = Time.now
##=> 2017-12-17 08:06:07 +0000
x
##=> 2017-12-17 08:06:07 +0000
# x will never change
# x is not compiled
# since out Gemfile has a <<require 'erb'>> statement, let's use ERB
y = "<%= Time.now %>"
##=> "<%= Time.now %>"
z = ERB.new(y)
#=> #<ERB:0x00000001c56830
# @encoding=#<Encoding:UTF-8>,
# @filename=nil,
# @lineno=0,
# @safe_level=nil,
# @src=
#  "#coding:UTF-8\n_erbout = ''; _erbout.concat(( Time.now ).to_s); _erbout.force_encoding(__ENCODING__)">
z.run
##2017-12-17 08:07:59 +0000=> nil
z.run
##2017-12-17 08:08:03 +0000=> nil
# now z changes value each new time you <<run>> it using the ERB gem.
