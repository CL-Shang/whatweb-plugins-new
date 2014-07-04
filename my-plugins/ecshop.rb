##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "ecshop" do
author "shang <s@suu.cc>" # 2014-06-30
version "0.1.1"
description "Ecshop [Chinese] - Homepage: http://bbs.dvbbs.net/"

# Examples #
examples %w| http://bbs.dvbbs.net/ |

# Dorks #
dorks [
'"Powered By Ecshop"'
]

# Matches #
matches [

  # url exists, i.e. returns HTTP status 200
#title="Powered by ECShop" || header="ECS_ID" || body="content=\"ECSHOP" || body="/api/cron.php"
{:text=>"Powered by ECShop"},
{:text=>"content=\"ECSHOP"},
{:text=>"/api/cron.php"},
{:url=>"/js/transport.js",:text=>"ecshop"},


]


end
