# MongoDB Replication TLA+ Models

This repository houses TLC model configurations used to check different properties of the MongoDB replication protocol. The original spec is located [here](https://github.com/visualzhou/mongo-repl-tla). There is also an [extended spec](RaftMongoSyncSources.tla) here that models sync source selection. This repo is intended to serve as a snapshot of the specs and models used to check certain properties of the MongoDB replication protocol during 2018 and 2019.

## Model Checking Statistics

The models have been run on a 2015 Macbook Pro and also on a 12-core Ubuntu 16.10 workstation. If you have the TLA+ tools installed you can run them all by running the `checkall.sh` script. Below are the various statistics for each model checking run. You can produce the output below by running the `report.sh` script after you have checked some models. You can also download and install the TLA+ tools locally by running `source setup_tlc.sh`.

### 2015 Macbook Pro, 3.1 GHz Intel Core i7, 16 GB 1867 MHz DDR3, 3 TLC workers

1_LearnCommitPoint.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:31:29.
Error: Invariant NeverRollbackBeforeCommitPoint is violated.
1176 states generated, 424 distinct states found, 233 states left on queue.
Finished in 01s at (2019-09-06 10:31:30)
```

1_LearnCommitPoint_noinv.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 11:25:12.
Model checking completed. No error has been found.
68431 states generated, 9177 distinct states found, 0 states left on queue.
Finished in 03s at (2019-09-06 11:25:14)
```

1_LearnCommitPointFromSyncSource_3_node.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 11:10:07.
Model checking completed. No error has been found.
46220 states generated, 7402 distinct states found, 0 states left on queue.
Finished in 03s at (2019-09-06 11:10:09)
```

1_LearnCommitPointFromSyncSource_5_node.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:31:42.
Error: Invariant NeverRollbackBeforeCommitPoint is violated.
10528 states generated, 1710 distinct states found, 866 states left on queue.
Finished in 03s at (2019-09-06 10:31:45)
```

1_LearnCommitPointFromSyncSource_5_node_noinv.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:31:46.
Model checking completed. No error has been found.
3161304 states generated, 230091 distinct states found, 0 states left on queue.
Finished in 03min 20s at (2019-09-06 10:35:06)
```

2_MultiNodeSyncSourceCycle.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:35:08.
Error: Invariant NoNonTrivialSyncCycle is violated.
24201 states generated, 4414 distinct states found, 1844 states left on queue.
Finished in 06s at (2019-09-06 10:35:14)
```

2_MultiNodeSyncSourceCycle_noinv.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:59:55.
Model checking completed. No error has been found.
2492863 states generated, 226262 distinct states found, 0 states left on queue.
Finished in 36s at (2019-09-06 11:00:30)
```

3_CommitPointPropagationLiveness.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:35:15.
Error: Temporal properties were violated.
Finished checking temporal properties in 00s at 2019-09-06 10:35:18
1579 states generated, 711 distinct states found, 441 states left on queue.
Finished in 03s at (2019-09-06 10:35:18)
```


### Ubuntu 16.10 Workstation, Intel Core i7-4930K CPU @ 3.40GHz, 32GB RAM, 10 TLC workers

1_LearnCommitPoint.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:44:59.
Error: Invariant NeverRollbackBeforeCommitPoint is violated.
1547 states generated, 530 distinct states found, 283 states left on queue.
Finished in 00s at (2019-09-06 10:44:59)
```

1_LearnCommitPoint_noinv.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:45:00.
Model checking completed. No error has been found.
68431 states generated, 9177 distinct states found, 0 states left on queue.
Finished in 01s at (2019-09-06 10:45:00)
```

1_LearnCommitPointFromSyncSource_3_node.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:45:01.
Model checking completed. No error has been found.
46220 states generated, 7402 distinct states found, 0 states left on queue.
Finished in 01s at (2019-09-06 10:45:02)
```

1_LearnCommitPointFromSyncSource_5_node.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:45:04.
Error: Invariant NeverRollbackBeforeCommitPoint is violated.
16874 states generated, 2733 distinct states found, 1420 states left on queue.
Finished in 01s at (2019-09-06 10:45:05)
```

1_LearnCommitPointFromSyncSource_5_node_noinv.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:45:06.
Model checking completed. No error has been found.
3161304 states generated, 230091 distinct states found, 0 states left on queue.
Finished in 47s at (2019-09-06 10:45:53)
```

2_MultiNodeSyncSourceCycle.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:45:54.
Error: Invariant NoNonTrivialSyncCycle is violated.
29280 states generated, 5384 distinct states found, 2286 states left on queue.
Finished in 02s at (2019-09-06 10:45:56)
```

2_MultiNodeSyncSourceCycle_noinv.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 11:03:52.
Model checking completed. No error has been found.
2492863 states generated, 226262 distinct states found, 0 states left on queue.
Finished in 08s at (2019-09-06 11:04:00)
```

3_CommitPointPropagationLiveness.cfg.out
```
Finished computing initial states: 1 distinct state generated at 2019-09-06 10:45:57.
Error: Temporal properties were violated.
Finished checking temporal properties in 00s at 2019-09-06 10:46:00
19221 states generated, 5903 distinct states found, 2835 states left on queue.
Finished in 03s at (2019-09-06 10:46:00)
```


