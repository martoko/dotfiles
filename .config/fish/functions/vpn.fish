function vpn-service-status
  if systemctl is-active --quiet nordvpnd
    echo "VPN: Started"
  else
    echo "VPN: Stopped"
  end
end

function vpn
  switch "$argv"
    case start
      systemctl is-active --quiet nordvpnd ||
      sudo systemctl start nordvpnd
      vpn-service-status
    case service-status
      systemctl status nordvpnd
    case stop
      if systemctl is-active --quiet nordvpnd
        nordvpn disconnect
        sudo systemctl stop nordvpnd
      end
      vpn-service-status
    case '*'
      systemctl is-active --quiet nordvpnd ||
      sudo systemctl start nordvpnd
      nordvpn $argv
  end
end
