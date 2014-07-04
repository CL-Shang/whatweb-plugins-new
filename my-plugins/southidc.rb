##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "southidc" do
author "shang <s@suu.cc>" # 2014-06-30
version "0.1.1"
description "Southidc [Chinese] - Homepage: http://www.southidc.net/"

# Examples #
examples %w| http://china.0791idc.com/ |

# Dorks #
dorks [
'"Powered By Southidc"'
]

# Matches #
matches [

  # url exists, i.e. returns HTTP status 200
  {:text=>"<META NAME=\"copyright\" CONTENT=\"Copyright 2003-2010 - Southidc.net-STUDIO"},
 # {:text=>"<META NAME=\"Author\" CONTENT=\"南方数据,www.Southidc.net"},
  {:text=>"Designed By <a href=\"http:\/\/www.southidc.net\" target=\"_blank\">Southidc.net"},
  {:url=>"/Script/FocusSlide.js",:text=>"www.southidc.net"},
  
]

end
