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

* Based on Ubuntu LTS
* Installed python packages:

  * Python 2.7

    * `python`
    * `python-pip`
    * `python-dev`
    * `python-apt`

  * Python 3.6

    * `python3`
    * `python3-pip`
    * `python3-dev`
    * `python3-apt`

* Other installed packages:

  * `sudo`
  * `bash`
  * `ca-certificates`
  * `aptitude`
  * `apt-transport-https`
  * `apt-utils`
  * `iproute2`
  * `ca-certificates`
  * `tree`
  * `git`
  * `curl`
  * `wget`
  * `tzdata`

## Changelog

* **1.1.1**

  * Removing `ENTRYPOINT` as Ansible Molecule wasn't working with it

* **1.1.0**

  * Added -dev packages
  * Added `ENV SHELL`

* **1.0.1**

  * Patch: Missing `CMD`

* **1.0.0**

  * First public version

## License

[ISC License](LICENSE)
