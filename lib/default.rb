# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
require "nutils"
require "erubis"
require "nokogiri"
require "yaml"

include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::LinkTo

module Site
  PROFILE_PIC = "http://www.maximeliron.com/images/me.png"
  SUMMARY = "Web swiss army knife, general technologist"
end

module Helpers
  def item_with_identifier(identifier)
    @items.find { |i| i.identifier == identifier }
  end

  def experience_item
    item_with_identifier("/resume/experience/")
  end

  def experience_list
    experience_item[:main]
  end

  def various_sites_list
    experience_item[:various_sites]
  end
end

include Helpers