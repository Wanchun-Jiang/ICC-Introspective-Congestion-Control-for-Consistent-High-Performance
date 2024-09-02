mkdir uplinkLog/
mkdir uplinkLog/celluar/
mkdir downlinkLog/
mkdir downlinkLog/celluar/

kill -9 $(ps -ef | awk '/receiver/{print $2}')
kill -9 $(ps -ef | awk '/iperf/{print $2}')

rm testlog
../receiver >> testlog 2>&1 &
sleep 5s\
&&
echo Copa
bash celluarCopa.sh >> testlog 2>&1\
&&
echo End-Copa
sleep 5s\
&&
echo ICC
bash celluarICC.sh >> testlog 2>&1\
&&
kill -9 $(ps -ef | awk '/receiver/{print $2}')
echo End-ICC

iperf -Z bbr -s -p 8888 >> testlog 2>&1 &
sleep 5s\
&&
echo BBR
bash celluarBBR.sh >> testlog 2>&1 \
&&
kill -9 $(ps -ef | awk '/iperf/{print $2}')
echo End-BBR

iperf -Z cubic -s -p 8888 >> testlog 2>&1 &
sleep 5s\
&&
echo Cubic
bash celluarCubic.sh >> testlog 2>&1 \
&&
kill -9 $(ps -ef | awk '/iperf/{print $2}')
echo End-Cubic

bash catCellular.sh >> testlog 2>&1

cd PlotData/
bash convCatCellular.sh
bash catCapacityTrace.sh ../celluar_trace/trace_taxi > cap_cellular_taxi.txt
bash plotDetail.sh


kill -9 $(ps -ef | awk '/receiver/{print $2}')
echo END the Test