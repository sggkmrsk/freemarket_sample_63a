FactoryBot.define do

  factory :item, class: Item do

    sequence(:title) { |i| "product_#{i}"}
    sequence(:description) { |i| "description_#{i}"}

    user_id          {1}
    address_id       {1}
    brand_id         {1}
    category_id      {1}
    product_size_id  {1}
    shippingway_id   {3}
    condition_num    {1}
    daystoship_num   {1}
    price            {1000.000}
    feerate          {0.100}
    profit_price     {900.000}

    association :user
    association :address
    association :category

  end

  # tradeモデルテスト用
  factory :sellitem, class: Item do

    sequence(:title) { |i| "product_#{i}"}
    sequence(:description) { |i| "description_#{i}"}

    condition_num    {0}
    daystoship_num   {0}
    price            {1000.000}
    feerate          {0.100}
    profit_price     {900.000}

    association :category
    association :address, factory: :selladdress
    user             {address.user}

  end

end