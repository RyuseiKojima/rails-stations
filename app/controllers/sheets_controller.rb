class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
    # rowごとにデータをグループ化
    @sheets_by_row = Sheet.all.group_by(&:row)
  end
end
