# wlanpi-bluetooth

Enables Bluetooth management access to the Raspberry Pi

## Dependencies

Requires bluez-tools.  
To install with dependency management:

```bash
sudo apt-get install [debfile]
```

## Post Installation

The DHCP server should be restarted through reboot or

```bash
sudo systemctl restart isc-dhcp-server
```

## Long Running Services

The following services are installed and auto-started by the system

* bt-agent
  * The authenticator service. Automatically started by the system for No Input No Output authentication. Bluetooth discoverability and pairability are default off.

* bt-network
  * The bluetooth network service. Automatically started by the system. Registers a Network Aggregation Point server
  
## Runtime Services

The following services are installed and used manually to manage the Bluetooth connection<

* bt-timedpair
  * 30s pairing window. This service is one shot and enables discoverability and pairability for 30s

## Usage

To pair a device, run

```bash
sudo systemctl start bt-timedpair
```

After 30s the Bluetooth service will no longer be visible and clients which have already scanned it will not be able to pair
