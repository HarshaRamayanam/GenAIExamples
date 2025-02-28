#!/usr/bin/env bash

# Copyright (C) 2024 Intel Corporation
# SPDX-License-Identifier: Apache-2.0

# Remember to set your private variables mentioned in README

# host_ip, OPENAI_API_KEY, HUGGINGFACEHUB_API_TOKEN, proxies...
pushd "../../../../../" > /dev/null
source .set_env.sh
popd > /dev/null

export EMBEDDING_MODEL_ID="BAAI/bge-base-en-v1.5"
export OPENAI_EMBEDDING_MODEL="text-embedding-3-small"
export LLM_MODEL_ID="meta-llama/Meta-Llama-3.1-8B-Instruct"
export OPENAI_LLM_MODEL="gpt-4o"
export TEI_EMBEDDING_ENDPOINT="http://${host_ip}:6006"
export TGI_LLM_ENDPOINT="http://${host_ip}:6005"
export NEO4J_URL="bolt://${host_ip}:7687"
export NEO4J_USERNAME=neo4j
export DATAPREP_SERVICE_ENDPOINT="http://${host_ip}:5000/v1/dataprep/ingest"
export LOGFLAG=True
export RETRIEVER_SERVICE_PORT=80
export LLM_SERVER_PORT=80
export MAX_OUTPUT_TOKENS=1024
