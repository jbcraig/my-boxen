class people::jbcraig::applications {
  include atom
  ## XXX the following is extremely slow, should try
  ## adding it as a list passed to the atom class or
  ## use a spaceship to collect them up ala the
  ## homebrew_packages
  # atom::package { 'aligner': }
  # atom::package { 'aligner-puppet': }
  # atom::package { 'aligner-python': }
  # atom::package { 'atom-beautify': }
  # atom::package { 'atom-overtype-mode': }
  # atom::package { 'atom-yamljson': }
  # atom::package { 'autocomplete-python': }
  # atom::package { 'export-html': }
  # atom::package { 'git-time-machine': }
  # atom::package { 'hex': }
  # atom::package { 'language-puppet': }
  # atom::package { 'linter': }
  # atom::package { 'linter-js-yaml': }
  # atom::package { 'linter-puppet-lint': }
  # atom::package { 'linter-puppet-parse': }
  # atom::package { 'markdown-writer': }
  # atom::package { 'merge-conflicts': }
  # atom::package { 'minimap': }
  # atom::package { 'minimap-cursorline': }
  # atom::package { 'minimap-find-and-replace': }
  # atom::package { 'minimap-linter': }
  # atom::package { 'minimap-split-diff': }
  # atom::package { 'project-manager': }
  # atom::package { 'split-diff': }
  # atom::package { 'vim-mode': }

  # include virtualbox
  # include tunnelblick
  # include sublime_text_2
  # include gitx
  # include caffeine
  include iterm2::stable
  # include onepassword
  # include onepassword::chrome
  # include sizeup
  include chrome
  # include hipchat
  # include spotify
  # include colloquy
  # include github_for_mac
  # include packer
  # include skype

  $homebrew_packages = [
    'tree',
    'curl',
    'gawk',
    'wget',
    'zsh',
    'nmap',         # Network mapper - Free Security Scanner
    'tmux',         # Terminal multiplexer - ala ~screen~
    #'rust',        # Systems programming language
    'libxml2',      # XML Parsing Library
    'imagemagick',  # Software to work with bitmap images.
    'pstree',       # List a processes parent/child relationship
    'watch',        # Monitor an activities output over time
  ]

  ## Declare all Homebrew packages at once
  package { $homebrew_packages: }

  ## Java
  include java

  # The Fix for Your Tmux in OS X Woes
  package { 'reattach-to-user-namespace':
  ensure          => installed,
  provider        => 'homebrew',
  install_options => '--wrap-pbcopy-and-pbpaste',
}

# package { 'Skitch':
#   ensure   => installed,
#   source   => 'http://cdn1.evernote.com/skitch/mac/release/Skitch-2.0.4.zip',
#   provider => compressed_app,
# }

# Libre FTP, SFTP, WebDAV, S3, Azure & OpenStack Swift browser for Mac and Windows
package { 'Cyberduck':
  source   => 'http://c315635.r35.cf1.rackcdn.com/Cyberduck-4.2.1.zip',
  provider => compressed_app
}

# An advanced Mac system monitor (license controlled)
package { 'iStat Menus':
  source   => 'http://s3.amazonaws.com/bjango/files/istatmenus3/istatmenus3.27.zip',
  provider => compressed_app
}

# package { 'Github':
#   source   => 'https://github-central.s3.amazonaws.com/mac%2FGitHub%20for%20Mac%20124.zip',
#   provider => compressed_app
# }

# package { 'Gephi':
#   source   => 'https://launchpadlibrarian.net/98903476/gephi-0.8.1-beta.dmg',
#   provider => appdmg,
# }

# package { 'Pacifist':
#   source   => 'http://www.charlessoft.com/pacifist_download/Pacifist_3.0.10.dmg',
#   provider => appdmg,
# }

# package { 'A Better Finder Renamer':
#   source   => 'http://d3k6s0oeufjjjn.cloudfront.net/download0_126e6b5/ABFRX8.dmg',
#   provider => appdmg,
# }

# package { 'CoRD':
#   source   => 'http://iweb.dl.sourceforge.net/project/cord/cord/0.5.7/CoRD_0.5.7.zip',
#   provider => compressed_app,
# }

# package { 'Crashplan':
#   source   => 'http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_3.2.1_Mac.dmg',
#   provider => pkgdmg,
# }

# package { 'Pandoc':
#   source   => 'https://pandoc.googlecode.com/files/pandoc-1.12.1-1.dmg',
#   provider => pkgdmg,
# }

# package { 'Yorufukurou':
#   source   => 'http://aki-null.net/yf/NightOwl.zip',
#   provider => compressed_app,
# }

# package { 'Transmission':
#   source   => 'http://download.transmissionbt.com/files/Transmission-2.73.dmg',
#   provider => appdmg
# }

# package { 'Timer':
#   source   => 'http://www.apimac.com/download/Timer.zip',
#   provider => compressed_app,
# }

# XXX need to update this when I work on actual workstation
# class { 'vmware_fusion': version => '5.0.3-1040386' }
class { 'dropbox': version       => '3.12.5' }
}
