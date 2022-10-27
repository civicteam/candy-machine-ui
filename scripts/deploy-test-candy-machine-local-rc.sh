#!/usr/bin/env bash
set -e
set -u

STAGE=${STAGE:-dev}
DISTRIBUTION=E6J2LQUCPDX9C
BUCKET=candymachine-walletconnect.civic.finance

npx deploy-aws-s3-cloudfront --non-interactive --debug --react --bucket ${BUCKET} --destination "${STAGE}" --distribution ${DISTRIBUTION}
