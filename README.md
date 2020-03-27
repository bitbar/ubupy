# ubupy

(Ubu)ntu based Docker image with (Py)thon.

Ready to use with Ansible Molecule:

```yml
platforms:
  - name: ubuntu18
    image: bitbar/ubupy:bionic
    pre_build_image: true
  - name: ubuntu16
    image: bitbar/ubupy:xenial
    pre_build_image: true
```

## Info

* Based on Ubuntu LTS (18.04)
* Python 2.7 and 3:

  * pip
  * dev

* [confd](https://github.com/kelseyhightower/confd) onboard
* other tools:

  * curl
  * wget
  * git
  * gcc
  * tree

## Changelog

* **1.1.0**

  * Added -dev packages
  * Added `ENV SHELL`

* **1.0.1**

  * Patch: Missing `CMD`

* **1.0.0**

  * First public version

## License

[ISC License](LICENSE)
