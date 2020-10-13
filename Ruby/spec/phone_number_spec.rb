require "phone_number"

RSpec.describe PhoneNumber do
  it 'test_1' do
    ph = PhoneNumber.new('+1(858)775-2868')

    expect('+1(858)775-2868').to eq(ph.get_original_text())
    expect('+18587752868').to eq(ph.get_stripped_number())
    expect('(858)775-2868').to eq(ph.get_value_as_north_american())
    expect('+1.858.775.2868').to eq(ph.get_value_as_international())
  end

  it 'test_2' do
    ph = PhoneNumber.new('+1(858)775-2868x123')

    expect('+1(858)775-2868x123').to eq(ph.get_original_text())
    expect('+18587752868x123').to eq(ph.get_stripped_number())
    expect('(858)775-2868x123').to eq(ph.get_value_as_north_american())
    expect('+1(858)775-2868x123').to eq(ph.get_value_as_international())
  end

  it 'test_3' do
    ph = PhoneNumber.new('+598.123.4567x858')

    expect('+598.123.4567x858').to eq(ph.get_original_text())
    expect('+5981234567x858').to eq(ph.get_stripped_number())
    expect('None').to eq(ph.get_value_as_north_american())
    expect('+598.123.456.7x858').to eq(ph.get_value_as_international())
  end

  it 'test_3' do
    ph = PhoneNumber.new('+27 1234 5678 ext 4')

    expect('+27 1234 5678 ext 4').to eq(ph.get_original_text())
    expect('+2712345678x4').to eq(ph.get_stripped_number())
    expect(None).to eq(ph.get_value_as_north_american())
    expect('+27 1234 5678 ext 4').to eq(ph.get_value_as_international())
  end

  it 'test_4' do
    ph = PhoneNumber.new('858-775-2868')

    expect('858-775-2868').to eq(ph.get_original_text())
    expect('+18587752868').to eq(ph.get_stripped_number())
    expect('(858)775-2868').to eq(ph.get_value_as_north_american())
    expect('+1.858.775.2868').to eq(ph.get_value_as_international())
  end

end
