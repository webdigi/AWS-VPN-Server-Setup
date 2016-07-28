# Rolling out your own private VPN server on AWS cloud in 10 minutes
Please refer to the blog article with all details on [setting up your VPN server on the AWS cloud using cloudformation templates](https://www.webdigi.co.uk/blog/2015/how-to-setup-your-own-private-secure-free-vpn-on-the-amazon-aws-cloud-in-10-minutes/). You can launch a VPN on any of AWS regions which include Tokyo, Singapore, Sydney, Frankfurt, Ireland, Sao Paulo, N. Virginia, N. California, Oregon, Mumbai.

## Video walkthrough on setting up the server
[![YouTubeVideo](http://i.imgur.com/OMQUry7.png)](http://youtu.be/fBBERp5CUgo)

## Contributing to this open source project
#### Overview and how the files are setup
- At the heart of this setup is the cloudformation template which does all the heavy lifting of setting up the AWS server based on parameters (VPN username, password, passphrase) entered by the user.
- You can see the cloudformation file in /src/output/Unified-Cloud-Formation.json
- You can edit the cloudformation template directly but it is not easy to maintain and include other files. To help managing the template we use ERB template (a Ruby template system to generate the file) with Lono.
- If you navigate to the /src folder you can see the Webdigi-Base-VPN-CF.json.erb file which is the base cloudformation template. The user-data (Shell commands that are run when instance is first created) is in the Webdigi-Base-VPN-UserData.sh.erb

#### Setting up this code on your computer 
- Download the ZIP or clone to your computer and run the following on your terminal
- cd /src
- gem install lono
- lono generate
- you will now see that the file /src/output/Unified-Cloud-Formation.json is updated.
- you can change the files config/lono.rb and the templates/* files to make necessary changes to the cloudformation template.
  

## Further support & updates
- We look forward to your feedback on how we can improve this system. 
- We currently setup VPN with PPTP and L2TP-IPSEC. This can be extended to include openvpn support and enhancements.
- Your commits and code updates are welcome. Changes are only required to src/templates in most cases. Looking forward to all the pull requests :)

### License
Licensed under the [MIT license](https://github.com/webdigi/AWS-VPN-Server-Setup/blob/master/LICENSE.txt). Maintained by Webdigi, a [Web Development agency](https://www.webdigi.co.uk) in London, UK
