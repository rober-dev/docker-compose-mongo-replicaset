#!/bin/bash

mongo --port 27011 <<EOF
   var cfg = {
        "_id": "rs0",
        "version": 1,
        "members": [
            {
                "_id": 0,
                "host": "mongo1:27011"
            },
            {
                "_id": 1,
                "host": "mongo2:27012"
            },
            {
                "_id": 2,
                "host": "mongo3:27013"
            }
        ]
    };
    rs.initiate(cfg, { force: true });
    rs.reconfig(cfg, { force: true });
    rs.status();
EOF
# sleep 10

# mongo --port 27011 <<EOF
#    use admin;
#    admin = db.getSiblingDB("admin");
#    admin.createUser(
#      {
# 	user: "admin",
#         pwd: "password",
#         roles: [ { role: "root", db: "admin" } ]
#      });
#      db.getSiblingDB("admin").auth("admin", "password");
#      rs.status();
# EOF