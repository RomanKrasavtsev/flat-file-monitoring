require "net/ssh"

class SSH
  attr_reader :ip

  def initialize ip, user, password
    @ip = ip
    @user = user
    @password = password
  end

  def exec command
    Net::SSH.start(@ip, @user, password: @password) do |ssh|
      ssh.exec!(command)
    end
  end
end

