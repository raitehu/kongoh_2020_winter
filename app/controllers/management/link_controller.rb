# frozen_string_literal: true

class Management::LinkController < ApplicationController
  def create
    link = Link.new(link_params)

    if link.save
      #TODO: flash message
      redirect_to management_root_path
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end

  def edit
    @link = target_link
    @view = Views::Management::Root.new
  end

  def update
    if target_link.update(link_params)
      #TODO: flash message
      redirect_to management_root_path
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end

  def destroy
    if target_link.destroy
      #TODO: flash message
      redirect_to management_root_path
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end


  private
  def target_link
    Link.find_by_id(params[:id])
  end

  def link_params
    params.require(:link)
          .permit(
                   :id,
                   :url,
                   :title,
                   :school,
                   :link_type
                 )
  end
end
