##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "kesioncms" do
author "shang <s@suu.cc>" # 2014-06-30
version "0.1.1"
description "KesionCMS [Chinese] - Homepage: http://www.kesion.com/"

# Examples #
examples %w| http://i.kesion.com/ http://www.zishachina.com/ |

# Dorks #
dorks [
'"Powered By KesionCMS"'
]

# Matches #
matches [

  # url exists, i.e. returns HTTP status 200
  {:text=>"/ks_inc/kesion.common.js"},
  {:text=>"KesionJS"},
  {:text=>"KesionPopup"},
  {:text=>"Powered By KesionICMS ",:version=>/V([\d\.]+)/m},
  {:text=>"powered by <a href=\"http://www.kesion.com\" target=\"_blank\">",:version=>/KesionCMS ([\d\.]+)/m},
  {:url=>"/KS_Inc/ajax.js",:version=>/KesionCMS V([\d\.]+)/m},
]

end
