This repository houses TLC model configurations used to check different properties of the MongoDB replication protocol. The main spec is housed [here](https://github.com/visualzhou/mongo-repl-tla).

To check a model from the command line, run:

```
java tlc2.TLC -workers 3 -config LearnCommitPoint/MC.cfg RaftMongo.tla

```