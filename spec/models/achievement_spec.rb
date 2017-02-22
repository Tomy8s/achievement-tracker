require 'rails_helper'

describe Achievement do
  it 'is not valid without a name' do
    achievement = Achievement.new(name: '', headline: 'Went to a fair')
    expect(achievement).to have(1).error_on(:name)
  end
end
