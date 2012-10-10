require 'rack'
require 'ruhoh'
require 'rack-livereload'

use Rack::LiveReload
run Ruhoh::Program.preview

# To preview your blog in "production" mode:
# run Ruhoh::Program.preview(:env => 'production')
