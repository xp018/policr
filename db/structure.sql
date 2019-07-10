CREATE TABLE migration_versions (id integer PRIMARY KEY AUTOINCREMENT, version text NOT NULL);
CREATE TABLE IF NOT EXISTS "votes"(id integer PRIMARY KEY, author_id integer NOT NULL, type integer NOT NULL, weight integer NOT NULL, report_id integer, created_at text NOT NULL, updated_at text NOT NULL,FOREIGN KEY (report_id) REFERENCES reports(id));
CREATE TABLE clean_modes (id integer PRIMARY KEY AUTOINCREMENT, chat_id integer NOT NULL, delete_target integer NOT NULL, delay_sec integer, status integer NOT NULL, created_at text NOT NULL, updated_at text NOT NULL);
CREATE TABLE subfunctions (id integer PRIMARY KEY AUTOINCREMENT, chat_id integer NOT NULL, type integer NOT NULL, status integer NOT NULL, created_at text NOT NULL, updated_at text NOT NULL);
CREATE TABLE true_indices (id integer PRIMARY KEY AUTOINCREMENT, chat_id integer NOT NULL, msg_id integer NOT NULL, indices text, created_at text NOT NULL, updated_at text NOT NULL);
CREATE TABLE IF NOT EXISTS "reports"(id integer PRIMARY KEY, author_id integer NOT NULL, reason integer NOT NULL, status integer NOT NULL, created_at text NOT NULL, updated_at text NOT NULL, role integer NOT NULL DEFAULT 0, target_user_id integer NOT NULL DEFAULT 0, target_msg_id integer NOT NULL DEFAULT 0, from_chat_id integer NOT NULL DEFAULT 0, target_snapshot_id integer NOT NULL DEFAULT 0, post_id integer NOT NULL DEFAULT 0);
