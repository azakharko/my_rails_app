# frozen_string_literal: true

# this is static pages class
class PagesController < ApplicationController
  def about
    @description = 'this is my app'
  end
end
