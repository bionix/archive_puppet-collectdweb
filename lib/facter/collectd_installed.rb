# should test for the package collectd
if FileTest.exists?("/etc/collectd/collectd.conf")
  Facter.add("collectd_installed") do
      setcode { true }
  end
end
