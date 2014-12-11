class CreateSpreeNewsletterTable < ActiveRecord::Migration
  def change
    create_table :spree_subscribers do |t|
      t.string      :token
      t.string      :email
      t.boolean     :subscribed, default: true
      t.datetime    :unsubscribed_at
      t.timestamps
    end

    create_table :spree_subscriptions do |t|
      t.integer     :subscriber_id
      t.integer     :email_id
    end

    create_table :spree_newsletters do |t|
      t.string      :subject
      t.text        :body
      t.boolean     :draft, default: false
      t.boolean     :sent, default: false
      t.timestamps
    end

    add_index :spree_subscribers, :email, unique: true
  end
end
