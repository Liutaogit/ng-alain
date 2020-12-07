#!/usr/bin/env bash

set -e

cd $(dirname $0)/../..

ROOT_DIR="$(pwd)"

sed -i '' 's/if (true)/if (!environment.production)/g' ${ROOT_DIR}/src/app/global-config.module.ts
sed -i '' 's/showSettingDrawer = true;/showSettingDrawer = !environment.production;/g' ${ROOT_DIR}/src/app/layout/basic/basic.component.ts
