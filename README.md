# MongoDB Replication TLA+ Models

This repository houses TLC model configurations used to check different properties of the MongoDB replication protocol. The original spec is housed [here](https://github.com/visualzhou/mongo-repl-tla). This repository also includes an extended spec that models sync source selection.

### Model Checking Statistics

I have run these models on a 2015 Macbook Pro and also on a 12-core Ubuntu 16.10 workstation. If you have the TLA+ tools installed you can run them all by running the `checkall.sh` script. Below are the various statistics for each model checking run.

**2015 Macbook Pro, 3.1 GHz Intel Core i7, 16 GB 1867 MHz DDR3, 3 TLC workers**
```

```

**Ubuntu 16.10 Workstation, 10 TLC workers**
```
Running model: 1_LearnCommitPoint.cfg, with spec: RaftMongo.tla, workers=10
Error: Invariant NeverRollbackBeforeCommitPoint is violated.
2151 states generated, 709 distinct states found, 368 states left on queue.
Finished in 00s at (2019-09-05 18:16:45)

Running model: 1_LearnCommitPoint_noinv.cfg, with spec: RaftMongo.tla, workers=10
Model checking completed. No error has been found.
68431 states generated, 9177 distinct states found, 0 states left on queue.
Finished in 01s at (2019-09-05 18:16:47)

Running model: 1_LearnCommitPointFromSyncSource_3_node.cfg, with spec: RaftMongo.tla, workers=10
Model checking completed. No error has been found.
46220 states generated, 7402 distinct states found, 0 states left on queue.
Finished in 01s at (2019-09-05 18:16:48)

Running model: 1_LearnCommitPointFromSyncSource_3_node_noinv.cfg, with spec: RaftMongo.tla, workers=10
Model checking completed. No error has been found.
46220 states generated, 7402 distinct states found, 0 states left on queue.
Finished in 01s at (2019-09-05 18:16:50)

Running model: 1_LearnCommitPointFromSyncSource_5_node.cfg, with spec: RaftMongo.tla, workers=10
Error: Invariant NeverRollbackBeforeCommitPoint is violated.
16099 states generated, 2681 distinct states found, 1407 states left on queue.
Finished in 01s at (2019-09-05 18:16:52)

Running model: 1_LearnCommitPointFromSyncSource_5_node_noinv.cfg, with spec: RaftMongo.tla, workers=10
Progress(17) at 2019-09-05 18:16:55: 139,900 states generated (139,900 s/min), 17,244 distinct states found (17,244 ds/min), 7,276 states left on queue.
Model checking completed. No error has been found.
3161304 states generated, 230091 distinct states found, 0 states left on queue.
Finished in 47s at (2019-09-05 18:17:40)

Running model: 2_MultiNodeSyncSourceCycle.cfg, with spec: RaftMongoSyncSources.tla, workers=10
Error: Invariant NoNonTrivialSyncCycle is violated.
36136 states generated, 6201 distinct states found, 2383 states left on queue.
Finished in 02s at (2019-09-05 18:17:43)

Running model: 3_CommitPointPropagationLiveness.cfg, with spec: RaftMongo.tla, workers=10
16993 states generated, 5324 distinct states found, 2601 states left on queue.
Finished in 03s at (2019-09-05 18:17:47)
```


