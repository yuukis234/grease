require "socket"
#eventmachineだと、ライセンスが不明瞭だった
#ruby liceneがあまり理解できなかった。それだと、今後のオープンソース活動に支障が出てきそう。
module Udp_Server
  class Udp < UDPSocket
    def udp_port
    end

    def udp_socket
    end
  end
end
