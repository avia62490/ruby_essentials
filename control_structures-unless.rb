# "unless" is equivalent to "if not" logic operator
def scoring(array)
  array.each do |user|
    unless user.is_admin?
      user.update_score
    end
  end
#   Also
#   user.update_score unless user.is_admin?
end