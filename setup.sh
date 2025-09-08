mkdir -p ./external/lib ./external/include
pushd ssmem 
make libssmem.a
cp libssmem.a ../external/lib/
cp include/ssmem.h ../external/include
popd

pushd sspfd 
make
cp libsspfd.a ../external/lib/
cp sspfd.h ../external/include/
popd

echo "building lock free version of clht" 
make libclht_lf.a

