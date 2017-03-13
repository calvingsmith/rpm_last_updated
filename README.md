# rpm_last_updated

#### Table of Contents

1. [Overview](#overview)
2. [Setup - The basics of getting started with rpm_last_updated](#setup)
    * [What rpm_last_updated affects](#what-rpm_last_updated-affects)
    * [Setup requirements](#setup-requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This package is a puppet module that finds the last time an RPM was installed on the 
system and logs it as a puppet fact in a manner consumable by the satellite server

## Setup

### What rpm_last_updated affects

* This is designed to create a puppet fact that is loaded into the satellite server
  and be queried for reporting purposes

### Setup Requirements **OPTIONAL**

1. Install in /etc/puppet/modules
2. build using puppet build rpm_last_updated
3. push puppet module into a puppet repo on the satellite server 

(module would be at /etc/puppet/modules/rpm_last_updated/pkgs)

4. You would then be able to attach this module to servers via content views

5. once the module is set up and runs against your servers, you will be able to run 
   a query against the satellite to find last updated server by

hammer fact list --search "fact = rpm_last_updated"


## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

## Reference

This module queries the RPM database to find the most recent updated rpm and loads
it into the puppet custom fact: rpm_last_updated

## Limitations

This was tested on RHEL 7 and satellite 6.2.7

## Development

Since your module is awesome, other users will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You may also add any additional sections you feel are
necessary or important to include here. Please use the `## ` header.
