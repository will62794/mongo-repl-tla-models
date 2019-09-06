#
# Check all models in this directory.
#

workers=$1

# Clear any previous results.
rm -rf results

./check.sh $workers "1_LearnCommitPoint.cfg" "RaftMongo.tla"
./check.sh $workers "1_LearnCommitPoint_noinv.cfg" "RaftMongo.tla"
./check.sh $workers "1_LearnCommitPointFromSyncSource_3_node.cfg" "RaftMongo.tla"
./check.sh $workers "1_LearnCommitPointFromSyncSource_3_node_noinv.cfg" "RaftMongo.tla"
./check.sh $workers "1_LearnCommitPointFromSyncSource_5_node.cfg" "RaftMongo.tla"
./check.sh $workers "1_LearnCommitPointFromSyncSource_5_node_noinv.cfg" "RaftMongo.tla"
./check.sh $workers "2_MultiNodeSyncSourceCycle.cfg" "RaftMongoSyncSources.tla"
./check.sh $workers "2_MultiNodeSyncSourceCycle_noinv.cfg" "RaftMongoSyncSources.tla"
./check.sh $workers "3_CommitPointPropagationLiveness.cfg" "RaftMongo.tla"
