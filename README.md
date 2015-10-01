# virtual

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with virtual](#setup)
    * [What virtual affects](#what-virtual-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with virtual](#beginning-with-virtual)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)


## Overview

This module install and configure virtual machine support for several virtualization.


## Module Description

This module install and configure virtual machine support for several virtualization.


## Setup

### What virtual affects

* Virtual will install drivers for KVM, XEN, VirtualBox, VMware and Hyper-V

### Beginning with virtual

The module isn't very complex right now, see the usage section for instructions.

## Usage

The module can be used in standard or experimental mode. What kind of
installation is performed can be controlled with parameters.

### Standard

Simply call the module without parameter:

```puppet
class { '::virtual': }
```

### Experimental

Simply call the module with parameter experimental enabled:

```puppet
class { '::icinga': experimental => true }
```

## Reference

## Limitations

This module has been built on and tested against Puppet 3.7 and higher. It requires working
repositories for client packages, they won't be delivered within this module. Please read the
support documentation on how you can get the necessary packages and provide them via a local
repository (search for createrepo to see how this could be done).

The module has been tested on:

* RedHat Enterprise Linux 6/7
* Scientific Linux 6
* CentOS Linux 6/7

Testing on other platforms has been light and cannot be guaranteed.

The documentation isn't feature complete yet and not all functions are documented.

##Development

If you like to add or improve this module, feel free to fork the module and send
me a merge request with the modification.
