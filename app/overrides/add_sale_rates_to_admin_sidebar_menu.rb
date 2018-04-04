Deface::Override.new(
    virtual_path: 'spree/layouts/admin',
    name: 'sale_rates_admin_sidebar_menu',
    insert_bottom: '#main-sidebar',
    partial: 'spree/admin/shared/sale_rates_sidebar_menu'
)