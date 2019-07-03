# frozen_string_literal: true

class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to link_path(@link.short_link)
    else
      render :new
    end
  end

  def show
    @link = Link.find_by(short_link: params[:short_link])
    @link.increment!(:visits)
  end

  private

  def link_params
    params.require(:link).permit(:short_link)
  end
end
