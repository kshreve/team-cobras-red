
CREATE TABLE "task" (
"task_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT ROLLBACK COLLATE RTRIM,
"user_id" INTEGER NOT NULL ON CONFLICT ROLLBACK,
"priority" INTEGER DEFAULT 1,
"task_description" TEXT,
"completed" INTEGER DEFAULT 0,
"display_order" INTEGER,
CONSTRAINT "fk_task_user_1" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id"),
CONSTRAINT "TASK_PRIMARY_UN" UNIQUE ("task_id" ASC) ON CONFLICT ROLLBACK
);

CREATE TABLE "user" (
"user_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"username" TEXT NOT NULL,
"password" TEXT NOT NULL,
"isAdmin" INTEGER NOT NULL DEFAULT 0,
CONSTRAINT "USERNAME_UN" UNIQUE ("username" ASC) ON CONFLICT ROLLBACK
);

