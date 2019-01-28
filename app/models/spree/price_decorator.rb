Spree::Price.class_eval do
    after_initialize :price_by_sale_rate

    def price_by_sale_rate
      unless self.variant.nil?
        rate = Spree::SaleRate.find_by(currency: self.variant.cost_currency)
        if !rate.nil? && !self.variant.cost_price.nil?
          self.amount = self.variant.cost_price * rate.rate
        end
      end
    end
end