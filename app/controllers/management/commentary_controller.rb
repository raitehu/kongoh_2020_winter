# frozen_string_literal: true

class Management::CommentaryController < Management::BaseController
  def create
    commentary = Commentary.new(commentary_params)

    if commentary.save
      #TODO: flash message
      redirect_to management_root_path, notice: '段落の追加に成功しました'
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end

  def edit
    @commentary = target_commentary
    @view = Views::Management::Commentary.new
    @view.id = params[:id]
  end

  def update
    if target_commentary.update(commentary_params)
      #TODO: flash message
      redirect_to management_root_path, notice: '段落の編集に成功しました'
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end

  def destroy
    if target_commentary.destroy
      #TODO: flash message
      redirect_to management_root_path, notice: '段落の削除に成功しました'
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end


  private
  def target_commentary
    Commentary.find_by_id(params[:id])
  end

  def commentary_params
    params.require(:commentary)
          .permit(
                   :id,
                   :heading,
                   :content,
                   :priority
                 )
  end
end
