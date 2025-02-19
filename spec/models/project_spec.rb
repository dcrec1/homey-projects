require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should validate_presence_of(:name) }
  it { should define_enum_for(:status).with_values([ :not_started, :in_progress, :completed, :on_hold, :cancelled ]) }
end
