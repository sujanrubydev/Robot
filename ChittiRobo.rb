require 'rubygems'
require 'serialport'

class ChittiRobo
	@conn=nil

	def initialize
		@conn=SerialPort.new("/dev/ttyAMA0",9600,8,1)
		Time.new
		set_intitial_values
	end

	def set_intitial_values()
		write("#1P1800T1000#2P2500T1000#3P400T1000#4P1250T1000#5P1300T1000#6P1800T1000#7P1000T1000#8P1000T1000#9P2000T1000#10P1100T1000\r\n")
		sleep(1)
		write("#11P1250T1000#12P2450T1000#13P1250T1000#14P1750T1000#15P1300T1000#16P1400T1000#17P1400T1000\r\n")
		sleep(1)
	end

	def write(command)
		@conn.write(command)
	end

	def move_hands
		write("#3P430T1000#2P2500T1000\r\n")
		sleep(2)
		write("#3P1100T1000#2P1700T1000\r\n")
		sleep(2)
		write("#3P2300T1000#2P800T1000\r\n")
		sleep(2)
		write("#3P1100T1000#2P1700T1000\r\n")
		sleep(2)
		write("#3P430T1000#2P2500T1000\r\n")
	end

	def rotate_head
		write("#1P1800T1000\r\n")
		sleep(2)
		write("#1P800T1000\r\n")
		sleep(2)
		write("#1P1800T1000\r\n")
		sleep(2)
		write("#1P2550T1000\r\n")
		sleep(2)
		write("#1P1800T1000\r\n")
	end

	def rotate_left_hand
		write("#2P1700T1000\r\n")
		sleep(2)
		write("#4P1250T1000\r\n")
		sleep(2)
		write("#4P2000T1000\r\n")
		sleep(2)
		write("#4P1250T1000\r\n")
		sleep(2)
		write("#4P500T1000\r\n")
		sleep(2)
		write("#4P1250T1000\r\n")
		sleep(2)
		write("#2P2500T1000\r\n")
	end

	def rotate_right_hand
		write("#3P1000T1000\r\n")
		sleep(2)
		write("#6P1800T1000\r\n")
		sleep(2)
		write("#6P2500T1000\r\n")
		sleep(2)
		write("#6P1800T1000\r\n")
		sleep(2)
		write("#6P800T1000\r\n")
		sleep(2)
		write("#6P1800T1000\r\n")
		sleep(2)
		write("#3P400T1000\r\n")
	end

	def rotate_right_arm
		write("#3P400T1000\r\n")
		sleep(2)
		write("#3P1100T1000\r\n")
		sleep(2)
		write("#3P2300T1000\r\n")
		sleep(2)
		write("#3P1100T1000\r\n")
		sleep(2)
		write("#3P400T1000\r\n")
	end

	def rotate_left_arm
		write("#2P2500T1000\r\n")
		sleep(2)
		write("#2P1700T1000\r\n")
		sleep(2)
		write("#2P800T1000\r\n")
		sleep(2)
		write("#2P1700T1000\r\n")
		sleep(2)
		write("#2P2500T1000\r\n")
	end

	def rotate_right_wrist
		write("#7P1000T1000\r\n")
		sleep(2)
		write("#7P350T1000\r\n")
		sleep(2)
		write("#7P1000T1000\r\n")
		sleep(2)
		write("#7P2200T1000\r\n")
		sleep(2)
		write("#7P1000T1000\r\n")
	end

	def rotate_left_wrist
		write("#5P1300T1000\r\n")
		sleep(2)
		write("#5P400T1000\r\n")
		sleep(2)
		write("#5P1300T1000\r\n")
		sleep(2)
		write("#5P2500T1000\r\n")
		sleep(2)
		write("#5P1300T1000\r\n")
	end
end

chitti=ChittiRobo.new

