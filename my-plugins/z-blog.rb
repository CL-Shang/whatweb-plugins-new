##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "z-blog" do
author "shang <s@suu.cc>" # 2014-06-30
version "0.1.1"
description "Z-Blog [Chinese] - Homepage: http://www.zblogcn.com/"

# Examples #
examples %w| http://bbs.dvbbs.net/ |

# Dorks #
dorks [
'"Powered By Z-Blog"'
]

# Matches #
matches [

  # url exists, i.e. returns HTTP status 200
  {:text=>"<meta name=\"generator\" content=\"Z-Blog "},
  {:version=>/<meta name=\"generator\" content=\"Z-Blog ([\d\.]+ Prism Build [\d\.]+)\"/},
  {:text=>"/zb_system/script/common.js"},
  {:text=>"/zb_users/theme/williamlong/script/custom.js"},
 
 ]


end
