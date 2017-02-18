# Settings for a router with DD-WRT

Submitted by Simon Moran on Feb 18th 2017.

Go to Setup -> Basic Setup    
Connection Type: PPTP  
Use DHCP: Yes  
Gateway: [ip address of your proxy server i.e. the VPN server, e.g. Amazon Cloud’s where you’ve got your server – public IP]  
Username: [your VPN username]  
Password: [your VPN password]  
MPPE Encryption: [Enable]  
Packet Reordering: [Disable]  
Dual-Access Mode: [no]  
Connection strategy: Keep Alive: Redial Period 30 seconds  
PPTP encryption: [Enable]  
Additional PPTP Options: mppe required,stateless   [type it like this, no space between required and stateless – just a comma]  
STP: [Disable]  
   
Optional settings: [leave blank – mine has MTU as Auto 1460 – which I have left]  
   
Router IP  
Local IP Address: [IP address of your VPN router in your house]  
Subnet Mask: 255.255.255.0  
Gateway: 0.0.0.0  
Local DNS: 0.0.0.0  
   
Network Address Server Settings (DHCP)  
Type: DCHP Server  
Server: [Enable]  
   
Use DNSMasq for DHCP: [leave unchecked]  
Use DNSMasq for DNS: [leave unchecked]  
DHCP-Authoritative: [leave unchecked]  
   
Other things:  
- Go to “Services” at top of page, click on VPN, all the VPN should be disabled.  
- Check that there is no firewall or startup script rules (go to Administration section -> then Commands)  
- Check in “Security” section, then “VPN Passthrough”, to verify that PPTP Passthrough is disabled  
   
Finally, go to Status -> WAN -> connect  
   
Wait 10 seconds – and then it should work – open google and type “what’s my IP” to check
