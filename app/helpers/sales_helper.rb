module SalesHelper

  def active_sale?
    Sale.where("sales.starts_on < ? and sales.ends_on >= ?", Date.current,Date.current).any?
  end

end