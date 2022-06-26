#!/bin/bash

tmux new -d -s vpn
tmux send 'sudo openvpn --config ~/Documents/work/credenciais/operador25.ovpn --auth-retry interact --auth-user-pass ~/Documents/work/credenciais/login_op25.conf' ENTER
tmux a -t vpn
