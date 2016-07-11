CREATE TABLE objects (
  object_id INTEGER PRIMARY KEY AUTOINCREMENT,
  json TEXT
);

CREATE TABLE property_indexes (
  property_index_id INTEGER PRIMARY KEY AUTOINCREMENT,
  indexed_property VARCHAR(255) CONSTRAINT unique_indexed_property UNIQUE
);

CREATE TABLE property_index_values (
  object_id INTEGER,
  property_index_id INTEGER,
  double_value DOUBLE,
  string_value VARCHAR(255),
  PRIMARY KEY(object_id, property_index_id, double_value, string_value)
);
