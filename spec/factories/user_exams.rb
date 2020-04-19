FactoryBot.define do
  factory :user_exam do
    fecha { DateTime.strptime('2001-02-03', '%Y-%m-%d') }
    puntaje { 20 }
    user_id { nil }
    exam_id { nil }
  end
end
