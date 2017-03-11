Facter.add(:rpm_last_updated) do
  data = Facter::Util::Resolution.exec('rpm -qa --last | head -1')
  data=data.gsub(/^\S+/,"").strip
  setcode do
    data
  end
end 
