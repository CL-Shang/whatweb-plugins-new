##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "emlog" do
author "shang <s@suu.cc>" # 2014-06-30
version "0.1.1"
description "Emlog [Chinese] - Homepage: http://bbs.dvbbs.net/"

# Examples #
examples %w| http://bbs.dvbbs.net/ |

# Dorks #
dorks [
'"Powered By Emlog"'
]

# Matches #
matches [

  # url exists, i.e. returns HTTP status 200

  {:url=>"/robots.txt",:text=>"emlog"},
  {:url=>"/wlwmanifest.xml",:text=>"emlog"},
  {:url=>"/content/templates/default/main.css",:text=>"emlog"},
]


end

