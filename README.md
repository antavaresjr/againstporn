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

For FortiOS 7.4.X:

    config system external-resource
    edit "My_Threat_Feed"
        set type address
        set resource "https://raw.githubusercontent.com/antavaresjr/againstporn/refs/heads/main/lista_enderecos.txt"
        set refresh-rate 300
    next
    end
