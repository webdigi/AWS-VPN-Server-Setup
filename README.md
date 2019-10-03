# Rolling out your own private VPN server on AWS cloud in 10 minutes
Please refer to the blog article with all details on [setting up your VPN server on the AWS cloud using cloudformation templates](https://www.webdigi.co.uk/blog/2015/how-to-setup-your-own-private-secure-free-vpn-on-the-amazon-aws-cloud-in-10-minutes/). You can launch a VPN on most of the AWS regions.

## Video walkthrough on setting up the server
[![YouTubeVideo](http://i.imgur.com/OMQUry7.png)](http://youtu.be/fBBERp5CUgo)

## Contributing to this open source project
#### Overview and how the files are setup
- At the heart of this setup is the cloudformation template which does all the heavy lifting of setting up the AWS server based on parameters (VPN username, password, passphrase) entered by the user.
- Please update the Unified-Cloud-Formation.yaml and Unified-Cloud-Formation-Key-Name.yaml (for use with Amazon Key pair to ssh to your instance)

## Further support & updates
- We look forward to your feedback on how we can improve this system.
- Vast majority of the support requests can be resolved if users wait 5 - 10 minutes after the VPN is created. This is because the IP address output shows before installation of supporting libraries are complete.
- We currently setup VPN with PPTP and L2TP-IPSEC. This can be extended to include openvpn support and enhancements.
- Your commits and code updates are welcome. Changes are only required to src/templates in most cases. Looking forward to all the pull requests :)

## Updates
- 29 Aug 2019 , Added support for Bahrain and Stockholm.
- 19 Feb 2018, Added Paris (EU-WEST-3) region support.
- 2 June 2017, we had comments from a few users that some new AWS accounts take a few hours before the account can be activated to use this service.
- 4 Feb 2017, Added Ohio (US-EAST-2) region support.
- 3 January 2017, Added London region support.
- 11 November 2016, (Mac users) PPTP is not supported on the latest macOS Sierra so please use the IPSEC over L2TP. [Please see screenshots and details on setting up L2TP over IPSEC in the blog](https://www.webdigi.co.uk/blog/2015/how-to-setup-your-own-private-secure-free-vpn-on-the-amazon-aws-cloud-in-10-minutes/).
- 12 September 2016, (Advanced users) See output/Unified-Cloud-Formation-Key-Name.json if you like to have a KEY NAME specified to SSH to the instance. Thanks to @tedi for the pull request.

### License
Licensed under the [MIT license](https://github.com/webdigi/AWS-VPN-Server-Setup/blob/master/LICENSE.txt). Maintained by Webdigi, a [Web Development agency](https://www.webdigi.co.uk) in London, UK
