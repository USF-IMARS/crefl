#!/bin/csh -x

limit stacksize 65435 

  #  Set CREFL_NDVI_HOME to the root directory for the package
  setenv CREFL_HOME .

  #  Set ANCPATH to the directory which contains tbase.hdf
  #  NOTE: *** this is the only REQUIRED environment variable, the others are for convenience ***
  setenv ANCPATH ${CREFL_HOME}

  #  Set WORKPATH to a directory for the intermediate file and output file
  setenv WORKPATH ${CREFL_HOME}/../testdata/output

  #  Set the three input Level 1 .hdf files
  setenv L1DIR ../testdata/input
  setenv MOD02QKM ${L1DIR}/MOD02QKM.10060152841.hdf
  setenv MOD02HKM ${L1DIR}/MOD02HKM.10060152841.hdf
  setenv MOD021KM ${L1DIR}/MOD021KM.10060152841.hdf

  #  Set the desired output filename
  setenv CREFLFilename ${WORKPATH}/CREFL.terra.hdf

  #  Run the algorithms
  ${CREFL_HOME}/crefl.1.7.1 --verbose --overwrite --of=$CREFLFilename --bands=1,2,3,4,5,6,7 $MOD021KM $MOD02HKM $MOD02QKM

