Veewee::Session.declare({
  :os_type_id  => 'OpenSUSE_64',
  :cpu_count   => '1',
  :memory_size => '1024',
  :disk_size   => '20480',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :iso_file => "SLES-11-SP4-DVD-x86_64-GM-DVD1.iso",
  :iso_src  => "",
  :iso_md5  => "c5d2148c2b66ac3ca211484cf2167fab",
    :iso_download_timeout => "1000",
  :boot_wait         => "10",
  :boot_cmd_sequence => [
    '<Esc><Enter>',
    'linux netdevice=eth0 netsetup=dhcp install=cd:/',
    ' lang=en_US autoyast=http://%IP%:%PORT%/autoinst.xml',
    ' textmode=1',
    '<Enter>'
  ],
  :kickstart_port    => "7122",
  :kickstart_timeout => "300",
  :kickstart_file    => ["autoinst.xml", "autoinst.xml"],
  :ssh_login_timeout => "10000",
  :ssh_user          => "vagrant",
  :ssh_password      => "vagrant",
  :ssh_key           => "",
  :ssh_host_port     => "7222",
  :ssh_guest_port    => "22",
  :sudo_cmd     => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/poweroff",
  :postinstall_files   => ["postinstall.sh", "install_java_7.sh"],
  :postinstall_timeout => "10000"
})