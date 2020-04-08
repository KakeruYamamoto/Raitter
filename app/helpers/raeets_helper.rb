# frozen_string_literal: true

module RaeetsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
      confirm_raeets_path
    elsif action_name == 'edit'
      raeet_path
    end
  end
end
