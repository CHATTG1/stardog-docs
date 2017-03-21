require 'zurb-foundation'

http_path = '/'
css_dir = 'stylesheets'
sass_dir = 'sass'
images_dir = 'images'
javascripts_dir = 'javascripts'

# :expanded, :nested, :compact or :compressed
output_style = :compact
#output_style = :compressed

relative_assets = true

#line_comments = true
line_comments = false

module Sass::Script::Functions
  # TODO document me
  def string_to_color(name)
    # FIXME check to see if a color could be found, don't just assume
    Sass::Script::Color.new Sass::Script::Color::COLOR_NAMES[name.value]
  end
end
