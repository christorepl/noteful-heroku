CREATE TABLE noteful_notes(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    modified TIMESTAMPTZ  DEFAULT now() NOT NULL,
    folder INTEGER REFERENCES noteful_folders(id) ON DELETE CASCADE NOT NULL
);