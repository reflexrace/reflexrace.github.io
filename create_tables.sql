CREATE TABLE IF NOT EXISTS tblMap(
	id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    preview_url TEXT NOT NULL,
    youtube_url TEXT
);

CREATE TABLE IF NOT EXISTS tblPlayer(
	id INTEGER PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS tblRecord(
	map_id INTEGER NOT NULL,
	player_id INTEGER NOT NULL,
	rank INTEGER NOT NULL,
	score INTEGER NOT NULL,
	top_speed INTEGER NOT NULL,
	distance INTEGER NOT NULL,
	PRIMARY KEY(map_id, player_id),
	FOREIGN KEY(map_id) REFERENCES map(id),
	FOREIGN KEY(player_id) REFERENCES player(id)
);


