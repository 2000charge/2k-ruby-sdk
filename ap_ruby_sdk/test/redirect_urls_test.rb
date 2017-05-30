require 'test_helper'

class RedirectUrlsTest < Minitest::Test

  def test_redirect_urls_is_created
    redirectUrls = ApRubySdk::RedirectUrls.new(
        'returnUrl' => 'http://2000charge.com/message/success.html',
        'cancelUrl' => 'http://2000charge.com/message/success.html'
    )

    assert_equal('http://2000charge.com/message/success.html', redirectUrls.returnUrl)
    assert_equal('http://2000charge.com/message/success.html', redirectUrls.cancelUrl)
  end

end