[![Build Status](https://travis-ci.org/rchukh/chamber.svg)](https://travis-ci.org/rchukh/chamber) [![Dependency Status](https://gemnasium.com/rchukh/chef-chamber.svg)](https://gemnasium.com/rchukh/chef-chamber) 

[![Stories in Ready](https://badge.waffle.io/rchukh/chamber.svg?label=ready&title=Ready)](http://waffle.io/rchukh/chamber) [![Stories in Progress](https://badge.waffle.io/rchukh/chamber.svg?label=in%20progress&title=In%20Progress)](http://waffle.io/rchukh/chamber)


# Project Chamber
Project Chamber is a Chef cookbook for provisioning a complete base environment for development needs.

## Supported Platforms

- CentOS

## Attributes

There are currently no supported attributes.

## Recipes

| Recipe  | Description | [Vendor files](files/default/vendor/README.md) |
| ------------- | ------------- | ------------- |
| ```chamber::postgresql``` | Installs and configures PostgreSQL | no |
| ```chamber::jdk``` | Installs and configures Oracle JDK 7. | **yes** |
| ```chamber::maven``` | Installs Maven 3 | no |

## Usage

Include `chamber` recipes in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chamber::postgresql]"
    "recipe[chamber::jdk]",
    "recipe[chamber::maven]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

This cookbook reuses some of the [existing chef cookbooks](metadata.rb). Please make sure that their license suits your case.

```text
Copyright 2014, Roman Chukh (<roman.chukh@gmail.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
