#! /usr/bin/env bash
#*******************************************************************************
# Copyright (c) 2019 Eclipse Foundation and others.
# This program and the accompanying materials are made available
# under the terms of the Eclipse Public License 2.0
# which is available at http://www.eclipse.org/legal/epl-v20.html
# SPDX-License-Identifier: EPL-2.0
#*******************************************************************************

set -o errexit
set -o nounset
set -o pipefail

PLANET_FOLDER="${1:-.}"
REFRESH_FREQUENCY_SECONDS="${REFRESH_FREQUENCY_SECONDS:-1200}"

cd "${PLANET_FOLDER}"
while true; do
  planet planet.ini
  sleep "${REFRESH_FREQUENCY_SECONDS}"
done