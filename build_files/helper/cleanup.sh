#!/bin/bash

set -oeux pipefail

dnf5 clean all
ostree container commit
