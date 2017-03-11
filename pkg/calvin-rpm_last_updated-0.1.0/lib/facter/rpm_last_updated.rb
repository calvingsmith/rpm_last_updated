Facter.add(:rpm_last_updated) do
  setcode do
    Facter::Core::Execution.exec('rpm -qa --last | awk "NR==1{\$1=\"\" ; print $0}"')
  end
end 
