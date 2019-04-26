class TrashController < ApplicationController

  # GET 
  def trash
    @deleted_records = Post.all.where(deleted: true)
  end

end
