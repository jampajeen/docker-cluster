#!/bin/bash
sleep 10

echo mongo_setup.sh time now: `date +"%T" `
mongo --host node1:27017 <<EOF
  var cfg = {
    "_id": "rs0",
    "members": [
      {
        "_id": 0,
        "host": "node1:27017",
        "priority": 2
      },
      {
        "_id": 1,
        "host": "node2:27017",
        "priority": 1
      },
      {
        "_id": 2,
        "host": "node3:27017",
        "priority": 0
      }
    ]
  };
  rs.initiate(cfg, { force: true });
  rs.reconfig(cfg, { force: true });
  db.getMongo().setReadPref('nearest');
EOF
