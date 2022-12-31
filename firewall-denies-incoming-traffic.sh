#
# Iptables to set up a simple firewall that allows incoming traffic on port 22 (SSH) and denies all other incoming traffic:
#

# Flush the current firewall rules
iptables --flush

# Set the default policy to drop all incoming traffic
iptables --policy INPUT DROP

# Allow incoming traffic on port 22 (SSH)
iptables --append INPUT --protocol tcp --destination-port 22 --jump ACCEPT

# Save the firewall rules
iptables-save > /etc/iptables/rules.v4
