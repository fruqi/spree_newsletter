Deface::Override.new(virtual_path: 'spree/admin/shared/_tabs',
  name: 'add_newsletter_tab',
  insert_after: "erb[silent]:contains('if can? :admin, Spree::Promotion')",
  text: "
    <%= tab :newsletter, icon: 'envelope', url: admin_newsletters_path %>
  "
)
