#!/usr/bin/env bash

/usr/local/Cellar/ruby/*/bin/gem install colorls bundler jekyll neovim

ln -sf /usr/local/lib/ruby/gems/3.2.0/bin/colorls /usr/local/bin/colorls
ln -sf /usr/local/lib/ruby/gems/3.2.0/bin/jekyll /usr/local/bin/jekyll
ln -sf /usr/local/lib/ruby/gems/3.2.0/bin/neovim /usr/local/bin/neovim

# jruby

# tabula-extractor extract tables from pdf's
jruby -S gem install tabula-extractor
