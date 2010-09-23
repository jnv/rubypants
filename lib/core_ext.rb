class Symbol
  def t(params = {})
    I18n.t(self, params)
  end
end

class String
  def t(params = {})
    I18n.t(self, params)
  end
end
