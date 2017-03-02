#!/usr/bin/env bash
#

set -e;
function installNVM() {

  LATEST=$(wget --spider "https://github.com/creationix/nvm/releases/latest" 2>&1 \
          | grep "Location" \
          | grep -o "v[0-9]*\.[0-9]*\.[0-9]*");
  echo ${LATEST};

  wget -qO- https://raw.githubusercontent.com/creationix/nvm/${LATEST}/install.sh | bash

  # curl https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash;
  # source ~/.profile;
  echo -e " ~~~  ~~~  ~~~  ~~~  ~~~  ~~~  ~~~  ~~~
  ";
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  installNVM;
fi;
