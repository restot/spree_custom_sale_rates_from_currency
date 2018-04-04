# This migration comes from spree_custom_sale_rates_from_currency (originally 20170913195943)
class CreateSaleRates < SpreeExtension::Migration[5.1]
  def self.up
    create_table :spree_sale_rates do |t|
      t.string :currency
      t.decimal :rate
      t.string :tag

      t.timestamps
    end

    def self.down
      drop_table :spree_sale_rates
    end
  end
end
