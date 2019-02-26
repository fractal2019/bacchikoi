class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :purchase_histories, dependent: :destroy
  has_one :cart

  validates :name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :name_kana, presence: true, format: {with: /\A([ァ-ン]|ー)+\z/, :message =>'はカタカナで入力して下さい。'}
  validates :postal_code, presence: true, format: {with: /\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}\z/, :message =>'は有効でありません。'}
  validates :address, presence: true
  validates :tel, presence: true, format: {with: /\A[0-9]{3}-[0-9]{4}-[0-9]{4}\z/, :message =>'は有効でありません。'}

# soft_deletable

#   # Deviseを使うと、問答無用でemailがユニーク扱いになる。
#   # それだと論理削除した際に再登録できないので、一旦emailに関する検証を削除する
#   # https://gist.github.com/brenes/4503386
#   _validators.delete(:email)
#   _validate_callbacks.each do |callback|
#     if callback.raw_filter.respond_to? :attributes
#       callback.raw_filter.attributes.delete :email
#     end
#   end

#   # emailのバリデーションを定義し直す
#   validates :email, presence: true
#   validates_format_of :email, with: Devise.email_regexp, if: :email_changed?
#   validates_uniqueness_of :email, scope: :deleted_at, if: :email_changed?

#   def self.find_for_authentication(warden_conditions)
#     without_soft_destroyed.where(email: warden_conditions[:email]).first
#   end

end
