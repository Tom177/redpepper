# URL�ɃA�N�Z�X���邽�߂̃��C�u�����̓ǂݍ���
require 'open-uri'
require 'openssl'
puts open('https://www.library-matsudo.jp/opac/wopc/pc/pages/TopPage.jsp', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read

# �X�N���C�s���O���URL
url = 'https://www.library-matsudo.jp/opac/wopc/pc/pages/TopPage.jsp/'
# user_agent�̋U��
user_agent = 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.63 Safari/537.36'
charset = nil
html = open(url, "User-Agent" => user_agent) do |f|
  charset = f.charset # ������ʂ��擾
  f.read
end

# �擾����html��S�ĕ\������
puts html