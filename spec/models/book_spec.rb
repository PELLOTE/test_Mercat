require 'rails_helper'

RSpec.describe Book, type: :model do
  describe '#create' do
    context 'when user has been created' do
      it 'validate presence of UserName' do
        is_expected.to validate_presence_of(:name)
      end
    end
  end
end
