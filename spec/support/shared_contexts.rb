RSpec.shared_context 'authenticated user' do
  subject(:current_user) { User.new(first_name: 'bob') }
end
