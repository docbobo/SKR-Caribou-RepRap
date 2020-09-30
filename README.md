# SKR Caribou Configuration for RepRap Firmware
=============================================

This is my working configuration for a Caribou/Zaribo MK3s 220 converted to SKR. Only difference to the stock Caribou are the BLTouch instead of the PINDA probe and the Moons motors instead of the LDO ones.

In its current state, the configuration tries to follow [Chris Warkocki's](https://github.com/codiac2600) [SKR Bear Marlin configuration](https://github.com/codiac2600/SKR-Bear-Marlin) as closely as possible.

## Hardware

* Bondtech Extruder
* Mosquito Magnum w/ 50W heater catridge and Slice Thermistor
* SKR 1.4 Turbo
* TMC 2209 UARTs
* BLTouch probe
* Pete's Playground Raspberry Pi to SKR 1.3/1.4/PRO/GTR connector

## Notes

Connectors for Part Cooling and Hotend Cooling are swapped. This means that the Part Cooling fan is connected to HE1, while the Hotend Cooling fan is connected to FAN0. Reason? The mosfet for FAN0 seems to be broken and always runs full power, so at least I can continue printing this way.
