# frozen_string_literal: true

class Management::RecitalController < Management::BaseController
  def create
    recital = Recital.new(recital_params)

    if recital.save
      #TODO: flash message
      redirect_to management_root_path, notice: '公演の追加に成功しました'
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end

  def edit
    @recital = target_recital
    @view = Views::Management::Recital.new
    @view.id = params[:id]
  end

  def update
    if target_recital.update(recital_params)
      #TODO: flash message
      redirect_to management_root_path, notice: '公演の編集に成功しました'
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end

  def destroy
    if target_recital.destroy
      #TODO: flash message
      redirect_to management_root_path, notice: '公演の削除に成功しました'
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end


  private
  def target_recital
    Recital.find_by_id(params[:id])
  end

  def recital_params
    params.require(:recital)
          .permit(
                   :id,
                   :name,
                   :date,
                   :opening_time,
                   :starting_time,
                   :site,
                   :description,
                   :poster,
                   programs_attributes: [
                     :id,
                     :_destroy,
                     :name,
                     :performance_type,
                     :optional_note
                   ],
                   recital_photos_attributes: [
                     :id,
                     :_destroy,
                     :name,
                     :image
                   ]
                 )
  end
end
