class AssetsController < ApplicationController
  def new
    @asset = Asset.new
  end

  def create
    @asset = Asset.new(asset_params)
  end

  private

  def asset_params
    params.require(:asset).permit(:csv)
  end
end
