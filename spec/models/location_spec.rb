require 'rails_helper'

RSpec.describe Location, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:coordinates) }
  it { is_expected.to have_many(:attractions) }
end