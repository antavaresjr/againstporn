This is a personal initiative where I wanted to be able to block adult content using a FortiGate model 50E, version 6.2.17, unlicensed (without fortinet UTM licensing).

The list can be used as an External Resource, an attribute available in the Security Fabric menu.

Configure your external connection as below:

    config system external-resource
        edit "Porn_List"
            set type address
            set resource "https://raw.githubusercontent.com/antavaresjr/againstporn/refs/heads/main/lista_enderecos.txt"
            set refresh-rate 1
        next
    end

For configuration in later versions of FortiOS, consult the respective knowledge bases.

<img width="451" height="213" alt="image" src="https://github.com/user-attachments/assets/cd458e57-25ce-4998-ae3b-c17c64fc2e8e" />

On FortiOS 7.4.X:

    config system external-resource
        edit "Porn_List"
            set type address
            set resource "https://raw.githubusercontent.com/antavaresjr/againstporn/refs/heads/main/lista_enderecos.txt"
            set refresh-rate 300
        next
    end

New list added:
https://github.com/StevenBlack/hosts

How i can get the ip addresses from urls table entries?

<img width="283" height="163" alt="image" src="https://github.com/user-attachments/assets/a8c974ed-1649-4d94-aa26-86e9900f28ee" />

To install the dig command so you can use dig +short, run the package installation command for your operating system.

Ubuntu/Debian:
    sudo apt install dnsutils

Fedora/RHEL:
    sudo dnf install bind-utils

macOS:
    brew install bind
