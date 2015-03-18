template "Unified-Cloud-Formation.json" do
  source "Webdigi-Base-VPN-CF.json.erb"
  variables(
    :Description => "Setting up your own private and secure VPN. You can read instructions on our blog https://www.webdigi.co.uk/blog/2015/how-to-setup-your-own-private-secure-free-vpn-on-the-amazon-aws-cloud-in-10-minutes/ and you can follow video instructions on Youtube https://www.youtube.com/watch?v=fBBERp5CUgo",
    :speed_standard_free => "Standard.VPN-Free",
    :speed_high_free => "High.Speed.VPN-Paid",
    :speed_ultra_free => "Ultra.High.Speed.VPN-Paid"
  )
end