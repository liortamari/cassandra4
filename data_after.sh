cqlsh -e "\
  INSERT INTO lior.test (campaign_id, user_id, event_type, element_id, created) \
  VALUES (2, 'user3', 'open', '', toTimestamp(now()));"

cqlsh -e "\
  INSERT INTO lior.test (campaign_id, user_id, event_type, element_id, created) \
  VALUES (2, 'user3', 'click', 'instagram', toTimestamp(now()));"

cqlsh -e "\
  INSERT INTO lior.test (campaign_id, user_id, event_type, element_id, created) \
  VALUES (2, 'user3', 'click', 'url', 0);"

cqlsh -e "\
  INSERT INTO lior.test (campaign_id, user_id, event_type, element_id, created) \
  VALUES (2, 'user3', 'click', 'tiktok', toTimestamp(now()));"

cqlsh -e "\
  INSERT INTO lior.test (campaign_id, user_id, event_type, element_id, created) \
  VALUES (2, 'user3', 'click', 'url', 0);"

cqlsh -e "\
  SELECT * FROM lior.test;"