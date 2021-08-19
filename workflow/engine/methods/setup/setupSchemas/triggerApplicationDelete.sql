CREATE TRIGGER APPLICATION_DELETE BEFORE DELETE ON APPLICATION
 FOR EACH ROW BEGIN
  DELETE FROM APP_CACHE_VIEW WHERE APP_UID = OLD.APP_UID; 
END