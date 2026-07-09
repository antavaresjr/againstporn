This is a personal initiative where I wanted to be able to block adult content using a FortiGate model 50E, version 6.2.17, without licensing.

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
