class PagesController < ApplicationController

#require 'rubygems'
require 'bio'

  def home
    srv = Bio::NCBI::REST::EFetch
#    srv.default_email = "dom_thual@yahoo.fr"
#    srv.default_tool = "unicamBio"
    Bio::NCBI.default_email ||= 'dom_thual@yahoo.fr'
    Bio::NCBI.default_tool ||= 'unicamBio'

    @tree =  Bio::NCBI::REST::EFetch.taxonomy(42241)

    @tree2 =  Bio::NCBI::REST::EFetch.taxonomy(265554, 'xml')

  end

  def contact
  end

end
