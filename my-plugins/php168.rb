##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "php168" do
author "shang <s@suu.cc>" # 2014-07-02
version "0.1.2"
description "PHP168 [Chinese] - Homepage: http://www.php168.net/"

# Examples #
examples %w| http://php168.cn/com/ http://gov.php168.cn/ http://www.dhyj.gov.cn/|

# Dorks #
dorks [
'"Powered By PHP168"'
]

# Matches #
matches [

  # url exists, i.e. returns HTTP status 200
   {:text=>"/php168/"},
   {:text=>"Powered By www.php168.com"},
   {:text=>"Powered by <a href=\"http:\/\/www.php168.com\" target=\"_blank\">PHP168"},
   {:version=>/PHP168 V([\d\.]+)<\/a>/m},
   {:text=>"<a href=\"http:\/\/www.php168.com\/bbs\" target=\"_blank\">PHP168cms</a>"},
   {:url=>"/js/util.js",:text=>"php168"},
   {:url=>"/skin/label/label.css"},   
   {:url=>"/plugin/qqconnect/bind.html",:text=>"php168"},
]



end
