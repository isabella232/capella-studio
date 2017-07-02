#!/bin/sh
# ====================================================================
# Copyright (c) 2006, 2017 THALES GLOBAL SERVICES.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#     Thales - initial API and implementation
# ====================================================================

# ====================================================================
#
# This script Publish update site from runtime core build to
# to http://download.polarsys.org/kitapha/updates
#
# ====================================================================

# Get script name
SCRIPT_NAME=$(basename $0)

# Get script parameter
# Verify parameter number => should be 3 
if [ "$#" -lt 1 ]
then
>&2 echo "ERREUR ${scriptName} : This script should take 1 parameters to run it."
>&2 echo "Command : ${scriptName} buildType"
	exit 97
fi

# Get component name
export BUILD_TYPE=$1

# product Name
export PRODUCT_NAME=capellastudio
# Target platform path
export TARGET_PATH="releng/plugins/org.polarsys.capella.studio.releng.targets"

# Job name
export JOB_NAME=capella-studio-master-clone1
# The root folder for all Publish
export PUBLISH_FOLDER_ROOT="/home/data/httpd/download.polarsys.org/capella/$PRODUCT_NAME"
# The root folder for all Publish udpate sites
export PUBLISH_UPDATES_ROOT="$PUBLISH_FOLDER_ROOT/updates"
# The root folder for all Publish products
export PUBLISH_PRODUCTS_ROOT="$PUBLISH_FOLDER_ROOT/products"
# Publish url
export URL_PUBLISH_PREFIX="http://download.polarsys.org/capella/$PRODUCT_NAME/updates"
export URL_PRODUCT_PREFIX="http://download.polarsys.org/capella/$PRODUCT_NAME/products"
# Master Build Url
export MASTER_BUILD_URL="https://hudson.polarsys.org/capella/job/$JOB_NAME"
# The root folder where all the builds of the same type as this one
# are published
export TARGET_ROOT="$PUBLISH_UPDATES_ROOT/$BUILD_TYPE"
# The root folder where all products are published
export TARGET_ROOT_PRODUCT="$PUBLISH_PRODUCTS_ROOT/$BUILD_TYPE"
