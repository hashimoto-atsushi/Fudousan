module ApartmentsHelper
  def submit_label
    if action_name == "new"
      "登録する"
    elsif action_name =="edit"
      "更新する"
    end
  end
end
