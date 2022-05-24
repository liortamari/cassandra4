cqlsh -e "\
  CREATE KEYSPACE lior WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 3};"

cqlsh -e "\
  CREATE TABLE IF NOT EXISTS lior.test (
      campaign_id INT,
      user_id TEXT,
      event_type TEXT,
      element_id TEXT,
      created TIMESTAMP,
      PRIMARY KEY ((campaign_id, event_type), element_id, user_id, created));"

cqlsh -e "\
  INSERT INTO lior.test (campaign_id, user_id, event_type, element_id, created) \
  VALUES (1, 'user1', 'open', '', toTimestamp(now()));"

cqlsh -e "\
  INSERT INTO lior.test (campaign_id, user_id, event_type, element_id, created) \
  VALUES (1, 'user1', 'click', 'instagram', toTimestamp(now()));"

cqlsh -e "\
  INSERT INTO lior.test (campaign_id, user_id, event_type, element_id, created) \
  VALUES (1, 'user1', 'click', 'url', 0);"

cqlsh -e "\
  INSERT INTO lior.test (campaign_id, user_id, event_type, element_id, created) \
  VALUES (2, 'user2', 'open', '', toTimestamp(now()));"

cqlsh -e "\
  INSERT INTO lior.test (campaign_id, user_id, event_type, element_id, created) \
  VALUES (2, 'user2', 'click', 'instagram', toTimestamp(now()));"

cqlsh -e "\
  INSERT INTO lior.test (campaign_id, user_id, event_type, element_id, created) \
  VALUES (2, 'user2', 'click', 'url', 0);"

cqlsh -e "\
  SELECT * FROM lior.test;"