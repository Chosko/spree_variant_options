Spree::Admin::OptionValuesController.class_eval do 

  # Rosario. We don't need this with spree-2.0.
  # def update_positions
  #   params[:positions].each do |id, index|
  #     OptionValue.update_all(['position=?', index], ['id=?', id])
  #   end
  # 
  #   respond_to do |format|
  #     format.html { redirect_to edit_admin_option_type_url(params[:id]) }
  #     format.js  { render :text => 'Ok' }
  #   end
  # end

end