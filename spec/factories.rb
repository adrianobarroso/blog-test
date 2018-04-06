FactoryBot.define do
  factory :post do
    title 'Titulo'
    content_md "#Test \n vamos ver o que temos **aqui** \n * Primeiro"
  end

  factory :user do
    email 'user@blog.com'
    password '123123'
  end
end
