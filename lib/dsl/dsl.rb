require "eventmachine"

module DSL

#self.read_confはコンフィグを読み込んで、ゲームサーバを実行する
#基本的に、portとhostとconfの設定オブジェクトだけを引数にしておく
#confに応じてゲームサーバーのカスタマイズができるようにしておく
#あと、helper機能も付けておく。
#appの部分を作っている
  def self.read_conf(file)
  end

  class App_Conf
    attr_reader :server_conf, :mode
    def initialize(server_conf, mode)
      @server_conf = server_conf
      mode_conf(mode)
    end

#プライベートメソッドは作ったほうが無難
    private
    #プロトコルの設定は、udp, tcp, rudpだけ。
    #追加は認めない
    def mode_conf(mode)
      port_mode = ["udp", "tcp", "rudp"]
      if port_mode.include?(mode)
        @mode = mode
      else
        @mode = "udp"
      end
    end
  end

  class Server_Conf
    attr_reader :port, :host, :server
    def initialize(port, host, server)
      @port = port
      @host = host
      # @server = server_conf(sever)
      @server = server
    end

    private

    #ここで、使うサーバーの命令を実行する
    def server_conf(server)
    end
  end
end
