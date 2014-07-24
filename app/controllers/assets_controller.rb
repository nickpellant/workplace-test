class AssetsController < ApplicationController
  def new
    @asset = Asset.new
  end
end
