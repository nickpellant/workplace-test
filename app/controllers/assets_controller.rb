class AssetsController < ApplicationController
  def new
    @asset = Asset.new
  end

  def create
    @asset = Asset.new(asset_params)

    if @asset.save
      CSVImportService.import(@asset)

      redirect_to @asset
    else
      render :new
    end
  end

  def show
    @asset = Asset.find(params[:id])
  end

  private

  def asset_params
    params.require(:asset).permit(:csv)
  end
end
