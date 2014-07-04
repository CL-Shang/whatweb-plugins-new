##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "phpwind" do
author "shang <s@suu.cc>" # 2014-06-30
version "0.1.1"
description "PHPWind [Chinese] - Homepage: http://www.phpwind.net/"

# Examples #
examples %w| http://www.phpwind.net/ http://www.hualongxiang.com/ http://www.jjj8.cn/|

# Dorks #
dorks [
'"Powered By PHPWind"'
]

# Matches #
matches [

  # url exists, i.e. returns HTTP status 200
  
  {:text=>"js/pw_ajax.js"},
  {:url=>"js/pw_ajax.js"},
]


end
