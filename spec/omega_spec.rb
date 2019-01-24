RSpec.describe Omega do
  it "has a version number" do
    expect(Omega::VERSION).not_to be nil
  end

  it "modeを追加する" do
    mode = "omega"
    server = DSL::Server_Conf.new(123, "subway", "omega")
    dsl = DSL::App_Conf.new(server, mode)
    expect(dsl.mode).to eq "udp"
  end

  it "App_ConfがちゃんとServer_Confを取り入れているかどうかを調べる" do
    mode = "omega"
    server = DSL::Server_Conf.new(123, "subway", "omega")
    dsl = DSL::App_Conf.new(server, "udp")
    expect(dsl.server_conf).to eq server
  end
end
=begin
#とりあえず、備忘録用に残しておく
RSpec.describe Omega do
  it "has a version number" do
    expect(Omega::VERSION).not_to be nil
  end
  describe '足し算' do
    it '1 + 1 は 2 になること' do
      expect(1 + 1).to eq 2
    end
  end
  describe '引き算' do
    it '10 - 1 は 9 になること' do
      expect(10 - 1).to eq 9
    end
  end
end
RSpec.describe "test" do
  describe '#greet' do
    it '12歳以下の場合、ひらがなで答えること' do
      user = Omega::User.new(name: 'たろう', age: 12)
      expect(user.greet).to eq 'ぼくはたろうだよ。'
    end
    it '13歳以上の場合、漢字で答えること' do
      user = Omega::User.new(name: 'たろう', age: 13)
      expect(user.greet).to eq '僕はたろうです。'
    end
  end
end
=end
