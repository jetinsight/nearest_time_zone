describe NearestTimeZone do
  it 'has the method to' do
    expect { NearestTimeZone.to(1, 3) }.not_to raise_error
  end

  it 'finds the time zone name nearest to coordinates' do
    expect(NearestTimeZone.to(41.8500, -87.6500)).to eq 'America/Chicago'
  end

  it 'returns Pacific/Honolulu timezone for Palmyra Atoll island' do
    expect(NearestTimeZone.to(5.883, -162.06)).to eq 'Pacific/Honolulu'
  end

  it 'returns Pacific/Midway timezone for Midway island' do
    expect(NearestTimeZone.to(28.2, -177.4)).to eq 'Pacific/Midway'
  end

  it 'returns America/Santo_Domingo timezone for Turks and Caicos Islands island' do
    expect(NearestTimeZone.to(21.77, -72.26)).to eq 'America/Santo_Domingo'
  end
end
