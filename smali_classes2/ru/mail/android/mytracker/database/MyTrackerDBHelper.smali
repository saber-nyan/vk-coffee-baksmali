.class public final Lru/mail/android/mytracker/database/MyTrackerDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MyTrackerDBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "mytracker"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final MAX_CUSTOM_EVENTS:I = 0x1f4

.field private static final MAX_EVENT_TIMESTAMPS:I = 0x3e8

.field private static final MAX_SESSIONS:I = 0x1f4

.field private static final SQL_CREATE_TABLE_EVENTS:Ljava/lang/String; = "CREATE TABLE table_events (id integer primary key autoincrement, type text not null, name text not null, timestamps text not null, timestamps_skipped integer not null, event_timestamp_start integer, value text not null, old_value text not null, params text not null  );"

.field private static final SQL_CREATE_TABLE_SESSIONS:Ljava/lang/String; = "CREATE TABLE table_sessions (sid integer not null, session_timestamp_start integer not null, session_timestamp_end integer  );"

.field private static final SQL_DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS "

.field private static final SQL_EVENTS_COUNT:Ljava/lang/String; = "SELECT COUNT(*) FROM table_events"

.field private static final SQL_EVENTS_COUNT_BY_TYPE:Ljava/lang/String; = "SELECT COUNT(*) FROM table_events WHERE type=?"

.field private static final SQL_EVENTS_EXCEPT_TYPE_TSSTART_NOTNULL:Ljava/lang/String; = "type <>?  AND event_timestamp_start IS NOT NULL"

.field private static final SQL_EVENTS_ID_IS_LESS_OR_EQUAL:Ljava/lang/String; = "id<=?"

.field private static final SQL_ID_IS_EQUAL:Ljava/lang/String; = "id=?"

.field private static final SQL_MAJOR_EVENTS_COUNT:Ljava/lang/String; = "SELECT COUNT(*) FROM table_events WHERE type IN (\'install\',\'install_referrer\',\'update\')"

.field private static final SQL_RUNNING_SESSIONS_COUNT:Ljava/lang/String; = "SELECT COUNT(*) FROM table_events WHERE type =?"

.field private static final SQL_SELECT_ALL_EVENTS:Ljava/lang/String; = "SELECT * FROM table_events ORDER BY id"

.field private static final SQL_SELECT_ALL_SESSIONS:Ljava/lang/String; = "SELECT * FROM table_sessions"

.field private static final SQL_SELECT_ALL_SESSIONS_WITH_ID:Ljava/lang/String; = "SELECT * FROM table_sessions WHERE sid=?"

.field private static final SQL_SELECT_EVENTS_WITH_LIMIT:Ljava/lang/String; = "SELECT * FROM table_events ORDER BY id LIMIT ?"

.field private static final SQL_SELECT_EVENT_FOR_UPDATE:Ljava/lang/String; = "SELECT id, timestamps, event_timestamp_start, timestamps_skipped FROM table_events WHERE type=? AND name=? AND value=? AND old_value=? AND params=?"

.field private static final SQL_SELECT_EVENT_ID_WITH_OFFSET:Ljava/lang/String; = "SELECT id FROM table_events LIMIT 1 OFFSET ?"

.field private static final SQL_SELECT_TIMESTAMP_RUNNING_SESSION:Ljava/lang/String; = "SELECT event_timestamp_start FROM table_events WHERE type=? AND event_timestamp_start IS NOT NULL "

.field private static final SQL_SESSIONS_COUNT:Ljava/lang/String; = "SELECT COUNT(*) FROM table_sessions"

.field private static final SQL_SESSIONS_COUNT_BY_ID:Ljava/lang/String; = "SELECT COUNT(*) FROM table_sessions WHERE sid=?"

.field private static final SQL_SESSIONS_DELETE_BY_SID_LIMIT:Ljava/lang/String; = "rowid IN (SELECT rowid FROM table_sessions WHERE sid=? LIMIT ?)"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mytracker_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 156
    return-void
.end method

.method private deleteOldestEvents(I)V
    .locals 8
    .param p1, "count"    # I

    .prologue
    .line 483
    if-gtz p1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string/jumbo v1, "find oldest events"

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v4, "SELECT id FROM table_events LIMIT 1 OFFSET ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, p1, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 487
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 489
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 490
    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 491
    .local v2, "id":J
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 492
    invoke-virtual {p0, v2, v3}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->deleteEvents(J)V

    goto :goto_0
.end method

.method private deleteOldestSessions(IJ)V
    .locals 8
    .param p1, "rowsToDelete"    # I
    .param p2, "id"    # J

    .prologue
    .line 498
    const-string/jumbo v1, "delete sessions"

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "table_sessions"

    const-string/jumbo v3, "rowid IN (SELECT rowid FROM table_sessions WHERE sid=? LIMIT ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 502
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleted count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method private getAllSessions(J)Ljava/util/ArrayList;
    .locals 9
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 406
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v2, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "SELECT * FROM table_sessions WHERE sid=?"

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 410
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 412
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 413
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 415
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Long;

    const-string/jumbo v3, "session_timestamp_start"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v8

    const/4 v3, 0x0

    aput-object v3, v1, v7

    .line 419
    .local v1, "longs":[Ljava/lang/Long;
    const-string/jumbo v3, "session_timestamp_end"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 421
    const-string/jumbo v3, "session_timestamp_end"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v7

    .line 423
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 428
    .end local v1    # "longs":[Ljava/lang/Long;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 429
    return-object v2
.end method

.method private printStatus()V
    .locals 0

    .prologue
    .line 579
    return-void
.end method

.method private pushSession(JJJJ)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "timestampStart"    # J
    .param p5, "timestampEnd"    # J
    .param p7, "timeStampBase"    # J

    .prologue
    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "push session ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, p3, p7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v1, p5, v4

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 341
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "sid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 343
    const-string/jumbo v1, "session_timestamp_start"

    sub-long v2, p3, p7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-nez v1, :cond_1

    .line 346
    const-string/jumbo v1, "session_timestamp_end"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 353
    :goto_1
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "table_sessions"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 354
    return-void

    .line 338
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    sub-long v4, p5, p7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 350
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_1
    const-string/jumbo v1, "session_timestamp_end"

    sub-long v2, p5, p7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1
.end method


# virtual methods
.method public deleteAllEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 462
    const-string/jumbo v1, "delete all events"

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "table_events"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 464
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleted count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public deleteAllEventsExceptRunningSessions()V
    .locals 7

    .prologue
    .line 469
    const-string/jumbo v1, "delete all events except running sessions"

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "table_events"

    const-string/jumbo v3, "type <>?  AND event_timestamp_start IS NOT NULL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "session"

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 471
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleted count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public deleteAllStoredSessions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 507
    const-string/jumbo v1, "delete all sessions"

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "table_sessions"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 509
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleted count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public deleteEvents(J)V
    .locals 7
    .param p1, "highestId"    # J

    .prologue
    .line 476
    const-string/jumbo v1, "delete events"

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "table_events"

    const-string/jumbo v3, "id<=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 478
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleted count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public getAllEvents()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lru/mail/android/mytracker/models/events/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v16, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lru/mail/android/mytracker/models/events/Event;>;"
    invoke-virtual/range {p0 .. p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT * FROM table_events ORDER BY id"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 360
    .local v14, "cursor":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 362
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 363
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 365
    const-string/jumbo v2, "id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "type"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "old_value"

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "params"

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "event_timestamp_start"

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string/jumbo v11, "timestamps"

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lru/mail/android/mytracker/utils/ListUtils;->fromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    const-string/jumbo v12, "timestamps_skipped"

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lru/mail/android/mytracker/factories/EventsFactory;->getEventFromDBEntry(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;J)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v15

    .line 376
    .local v15, "event":Lru/mail/android/mytracker/models/events/Event;
    if-eqz v15, :cond_1

    .line 378
    invoke-interface {v15}, Lru/mail/android/mytracker/models/events/Event;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "session"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v15, Lru/mail/android/mytracker/models/events/SessionEvent;

    if-eqz v2, :cond_2

    move-object/from16 v19, v15

    .line 380
    check-cast v19, Lru/mail/android/mytracker/models/events/SessionEvent;

    .line 381
    .local v19, "sessionEvent":Lru/mail/android/mytracker/models/events/SessionEvent;
    invoke-virtual/range {v19 .. v19}, Lru/mail/android/mytracker/models/events/SessionEvent;->getId()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getAllSessions(J)Ljava/util/ArrayList;

    move-result-object v20

    .line 382
    .local v20, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Long;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 384
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Long;

    .line 386
    .local v18, "session":[Ljava/lang/Long;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lru/mail/android/mytracker/models/events/SessionEvent;->addSessionTimestamp([Ljava/lang/Long;)V

    goto :goto_1

    .line 388
    .end local v18    # "session":[Ljava/lang/Long;
    :cond_0
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "sessionEvent":Lru/mail/android/mytracker/models/events/SessionEvent;
    .end local v20    # "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Long;>;"
    :cond_1
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 393
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 400
    .end local v15    # "event":Lru/mail/android/mytracker/models/events/Event;
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 401
    return-object v16
.end method

.method public getEvents(I)Ljava/util/List;
    .locals 15
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lru/mail/android/mytracker/models/events/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v14, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lru/mail/android/mytracker/models/events/Event;>;"
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "SELECT * FROM table_events ORDER BY id LIMIT ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 436
    .local v12, "cursor":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 438
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 439
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    const-string/jumbo v0, "id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string/jumbo v2, "type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "old_value"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "params"

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "event_timestamp_start"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string/jumbo v9, "timestamps"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lru/mail/android/mytracker/utils/ListUtils;->fromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    const-string/jumbo v10, "timestamps_skipped"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lru/mail/android/mytracker/factories/EventsFactory;->getEventFromDBEntry(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;J)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v13

    .line 452
    .local v13, "event":Lru/mail/android/mytracker/models/events/Event;
    if-eqz v13, :cond_0

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 456
    .end local v13    # "event":Lru/mail/android/mytracker/models/events/Event;
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 457
    return-object v14
.end method

.method public getEventsCount()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT COUNT(*) FROM table_events"

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 185
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 186
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 187
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 188
    return v0
.end method

.method public getEventsCount(Ljava/lang/String;)I
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT COUNT(*) FROM table_events WHERE type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 194
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 196
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 197
    return v0
.end method

.method public getMajorEventsCount()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 220
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT COUNT(*) FROM table_events WHERE type IN (\'install\',\'install_referrer\',\'update\')"

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 221
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 222
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 223
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    return v0
.end method

.method public getSessionsCount()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 211
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT COUNT(*) FROM table_sessions"

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 212
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 213
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 214
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 215
    return v0
.end method

.method public getSessionsCount(J)I
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v6, 0x0

    .line 202
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT COUNT(*) FROM table_sessions WHERE sid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 203
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 204
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 205
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 206
    return v0
.end method

.method public getTimestampBaseFromRunningSession()J
    .locals 6

    .prologue
    .line 523
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "session"

    aput-object v5, v0, v4

    .line 525
    .local v0, "args":[Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 527
    .local v2, "ts":J
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "SELECT event_timestamp_start FROM table_events WHERE type=? AND event_timestamp_start IS NOT NULL "

    invoke-virtual {v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 530
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 532
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 533
    const-string/jumbo v4, "event_timestamp_start"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 534
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 537
    :cond_0
    return-wide v2
.end method

.method public hasRunningSessions()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 514
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "SELECT COUNT(*) FROM table_events WHERE type =?"

    new-array v6, v2, [Ljava/lang/String;

    const-string/jumbo v7, "session"

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 515
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 516
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 517
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 518
    if-lez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public insertEvent(Lru/mail/android/mytracker/models/events/Event;J)Z
    .locals 6
    .param p1, "event"    # Lru/mail/android/mytracker/models/events/Event;
    .param p2, "timestampBase"    # J

    .prologue
    .line 229
    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v3, "custom"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {p0, v1}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getEventsCount(Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, "count":I
    const/16 v3, 0x1f4

    if-lt v0, v3, :cond_0

    .line 235
    const-string/jumbo v3, "exceeded maximum number of custom events, event ignored"

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 236
    const/4 v3, 0x0

    .line 258
    :goto_0
    return v3

    .line 240
    .end local v0    # "count":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insert event type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 242
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v3, "name"

    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v3, "timestamps"

    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->getTimestamps()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, p2, p3}, Lru/mail/android/mytracker/utils/ListUtils;->toString(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v3, "timestamps_skipped"

    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->getTimestampsSkipped()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    const-string/jumbo v3, "event_timestamp_start"

    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->getTimestampStart()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    const-string/jumbo v3, "value"

    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v3, "old_value"

    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->getOldValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v3, "params"

    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->getParams()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "table_events"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 254
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getEventsCount()I

    move-result v0

    .line 255
    .restart local v0    # "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "events count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->printStatus()V

    .line 258
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 164
    const-string/jumbo v0, "CREATE TABLE table_events (id integer primary key autoincrement, type text not null, name text not null, timestamps text not null, timestamps_skipped integer not null, event_timestamp_start integer, value text not null, old_value text not null, params text not null  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "CREATE TABLE table_sessions (sid integer not null, session_timestamp_start integer not null, session_timestamp_end integer  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 180
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 171
    const-string/jumbo v0, "DROP TABLE IF EXISTS table_events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "DROP TABLE IF EXISTS table_sessions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p1}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 174
    return-void
.end method

.method public removeSkippedFromAllRows()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 542
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 543
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "timestamps_skipped"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    invoke-virtual {p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "table_events"

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 547
    .local v1, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removed skipped timestamps from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " events"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public updateEvent(Lru/mail/android/mytracker/models/events/Event;JJ)Z
    .locals 26
    .param p1, "event"    # Lru/mail/android/mytracker/models/events/Event;
    .param p2, "timestampBase"    # J
    .param p4, "lastStopTimestamp"    # J

    .prologue
    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "try to update event type: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lru/mail/android/mytracker/models/events/Event;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 265
    const/4 v3, 0x5

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Lru/mail/android/mytracker/models/events/Event;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    invoke-interface/range {p1 .. p1}, Lru/mail/android/mytracker/models/events/Event;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x2

    invoke-interface/range {p1 .. p1}, Lru/mail/android/mytracker/models/events/Event;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    invoke-interface/range {p1 .. p1}, Lru/mail/android/mytracker/models/events/Event;->getOldValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x4

    invoke-interface/range {p1 .. p1}, Lru/mail/android/mytracker/models/events/Event;->getParams()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 267
    .local v2, "args":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v6, "SELECT id, timestamps, event_timestamp_start, timestamps_skipped FROM table_events WHERE type=? AND name=? AND value=? AND old_value=? AND params=?"

    invoke-virtual {v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 268
    .local v12, "cursor":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 270
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 271
    const-string/jumbo v3, "id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 272
    .local v4, "id":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "found event for update. id: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 273
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .local v24, "values":Landroid/content/ContentValues;
    invoke-interface/range {p1 .. p1}, Lru/mail/android/mytracker/models/events/Event;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "session"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    const-string/jumbo v3, "event_timestamp_start"

    invoke-interface/range {p1 .. p1}, Lru/mail/android/mytracker/models/events/Event;->getTimestampStart()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    const-string/jumbo v3, "event_timestamp_start"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v6, "table_events"

    const-string/jumbo v7, "id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, v24

    invoke-virtual {v3, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 322
    const-string/jumbo v3, "event updated"

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 323
    invoke-direct/range {p0 .. p0}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->printStatus()V

    .line 325
    const/4 v3, 0x1

    .line 333
    .end local v4    # "id":J
    .end local v24    # "values":Landroid/content/ContentValues;
    :goto_1
    return v3

    .line 283
    .restart local v4    # "id":J
    .restart local v24    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string/jumbo v3, "event_timestamp_start"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v3, p0

    move-wide/from16 v8, p4

    move-wide/from16 v10, p2

    invoke-direct/range {v3 .. v11}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->pushSession(JJJJ)V

    .line 287
    const-string/jumbo v3, "timestamps_skipped"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 288
    .local v20, "timestampsSkipped":I
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 290
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getSessionsCount(J)I

    move-result v16

    .line 291
    .local v16, "sessionsRowsCount":I
    const/16 v3, 0x1f4

    move/from16 v0, v16

    if-le v0, v3, :cond_0

    .line 293
    move/from16 v0, v16

    add-int/lit16 v15, v0, -0x1f4

    .line 294
    .local v15, "rowsToDelete":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exceeded maximum number of sessions, remove oldest sessions. count: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v5}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->deleteOldestSessions(IJ)V

    .line 296
    const-string/jumbo v3, "timestamps_skipped"

    add-int v6, v20, v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 302
    .end local v15    # "rowsToDelete":I
    .end local v16    # "sessionsRowsCount":I
    .end local v20    # "timestampsSkipped":I
    :cond_2
    const-string/jumbo v3, "timestamps"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 303
    .local v19, "timestampsStr":Ljava/lang/String;
    const-string/jumbo v3, "timestamps_skipped"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 304
    .local v20, "timestampsSkipped":J
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 306
    invoke-static/range {v19 .. v19}, Lru/mail/android/mytracker/utils/ListUtils;->fromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 307
    .local v18, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Lru/mail/android/mytracker/models/events/Event;->getTimestamps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .local v22, "ts":J
    sub-long v6, v22, p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 308
    .end local v22    # "ts":J
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v17

    .line 309
    .local v17, "size":I
    const/16 v3, 0x3e8

    move/from16 v0, v17

    if-le v0, v3, :cond_4

    .line 311
    move/from16 v0, v17

    add-int/lit16 v13, v0, -0x3e8

    .line 312
    .local v13, "delta":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exceeded maximum number of event timestamps, remove oldest timestamps. count: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v13, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v18

    .line 314
    int-to-long v6, v13

    add-long v20, v20, v6

    .line 317
    .end local v13    # "delta":I
    :cond_4
    const-string/jumbo v3, "timestamps"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Lru/mail/android/mytracker/utils/ListUtils;->toString(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string/jumbo v3, "timestamps_skipped"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 329
    .end local v4    # "id":J
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "size":I
    .end local v18    # "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v19    # "timestampsStr":Ljava/lang/String;
    .end local v20    # "timestampsSkipped":J
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 330
    const-string/jumbo v3, "no events found for update"

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 333
    const/4 v3, 0x0

    goto/16 :goto_1
.end method
