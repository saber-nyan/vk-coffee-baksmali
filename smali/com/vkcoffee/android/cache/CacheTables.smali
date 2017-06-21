.class public Lcom/vkcoffee/android/cache/CacheTables;
.super Ljava/lang/Object;
.source "CacheTables.java"


# static fields
.field public static final AUDIO_DB_VERSION:I = 0x5

.field public static final CHAT_DB_VERSION:I = 0x4

.field public static final GROUPS_DB_VERSION:I = 0xa

.field public static final MAIN_DB_VERSION:I = 0x4c

.field public static final POSTS_DB_VERSION:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAudio(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 26
    const-string/jumbo v0, "DROP TABLE IF EXISTS `files`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "CREATE TABLE `files` (oid int, aid int, title varchar(500), artist varchar(500), duration int, lastplay int, user bool, lyrics_id int, cover_version int not null default 0, lyrics text, file_size int not null default -1)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static createCache(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 44
    const-string/jumbo v0, "DROP TABLE IF EXISTS `users`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v0, "DROP TABLE IF EXISTS `birthdays`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v0, "DROP TABLE IF EXISTS `friendlists`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v0, "DROP TABLE IF EXISTS `users_friendlists`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "DROP TABLE IF EXISTS `messages`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "DROP TABLE IF EXISTS `chats`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "DROP TABLE IF EXISTS `chats_users`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "DROP VIEW IF EXISTS `dialogs`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "DROP TABLE IF EXISTS `groups`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "DROP TABLE IF EXISTS `news`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "DROP TABLE IF EXISTS `news_comments`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "DROP TABLE IF EXISTS `wall`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "DROP TABLE IF EXISTS `wall_drafts`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v0, "DROP TABLE IF EXISTS `api_queue`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "DROP TABLE IF EXISTS `friends_hints_order`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "DROP TABLE IF EXISTS `imported_contacts`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "DROP TABLE IF EXISTS `users_name_cases`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "DROP TABLE IF EXISTS `messages_read_ids_in`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "DROP TABLE IF EXISTS `messages_read_ids_out`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "DROP TABLE IF EXISTS `messages_unread_counters`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, "DROP TABLE IF EXISTS `messages_top_ids`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "DROP INDEX IF EXISTS `messages_mid`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v0, "DROP INDEX IF EXISTS `messages_time`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "DROP INDEX IF EXISTS `messages_peer`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "DROP INDEX IF EXISTS `messages_peer_mid`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "DROP INDEX IF EXISTS `messages_top_ids_time`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "DROP INDEX IF EXISTS `messages_top_ids_id`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "DROP INDEX IF EXISTS `chats_users_cid`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "DROP INDEX IF EXISTS `imported_contacts_service`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "DROP INDEX IF EXISTS `users_cases`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "CREATE TABLE `users` (uid int not null unique, firstname varchar(150), lastname varchar(150), photo_small varchar(200), photo_big varchar(200), domain varchar(200), is_friend bool, f bool, last_updated int, lists int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v0, "CREATE TABLE `users_name_cases` (uid int not null, firstname varchar(150), lastname varchar(150), name_case int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, "CREATE INDEX `users_cases` ON users_name_cases (name_case)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "CREATE TABLE `birthdays` (uid int unique, name_r varchar(150), bday int not null, bmonth int not null, byear int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "CREATE TABLE `friendlists` (lid int unique, name varchar(200))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v0, "CREATE TABLE `users_friendlists` (uid int not null, lid int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v0, "CREATE TABLE `friends_hints_order` (uid int not null, list_order int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "CREATE TABLE `imported_contacts` (vk_id int not null, external_id varchar(30), external_name varchar(150), external_photo varchar(200), description varchar(300), req_sent bool, service int not null, unique(vk_id, external_id) on conflict replace)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "CREATE TABLE `messages` (mid int unique, peer int not null, sender int not null, text text, time int not null, attachments blob, fwd blob, extras text, flags int not null, random_id int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "CREATE TABLE `chats` (cid int unique, title varchar(500), admin int not null, photo varchar(500), need_update_users bool not null default 1)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "CREATE TABLE `chats_users` (cid int not null, uid int not null, inviter int not null, invited int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "CREATE TABLE `messages_read_ids_in` (peer int unique, mid int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "CREATE TABLE `messages_read_ids_out` (peer int unique, mid int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "CREATE TABLE `messages_unread_counters` (peer int unique, unread_count int not null default 0)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "CREATE TABLE `messages_top_ids` (peer int unique, msg_id int not null, msg_time int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "CREATE VIEW `dialogs` AS SELECT messages.*, users.*, chats.*, messages_unread_counters.unread_count, messages_top_ids.msg_time FROM messages_top_ids JOIN messages ON messages_top_ids.msg_id=messages.mid LEFT JOIN users ON messages.peer=uid LEFT JOIN chats ON messages.peer-2000000000=cid LEFT JOIN messages_unread_counters ON messages.peer=messages_unread_counters.peer"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "CREATE INDEX `messages_mid` ON messages (mid)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "CREATE INDEX `messages_time` ON messages (time)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "CREATE INDEX `messages_peer` ON messages (peer)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v0, "CREATE INDEX `messages_peer_mid` ON messages (peer, mid)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, "CREATE INDEX `messages_top_ids_time` ON messages_top_ids (msg_time)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v0, "CREATE INDEX `messages_top_ids_id` ON messages_top_ids (msg_id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "CREATE INDEX `chats_users_cid` ON chats_users (cid)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "CREATE INDEX `imported_contacts_service` ON imported_contacts (service)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v0, "CREATE TABLE `groups` (gid int not null unique, name varchar(200), activity varchar(200), domain varchar(200), count int not null, type int not null, closed int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "CREATE TABLE `api_queue` (id INTEGER PRIMARY KEY, method varchar(200), args text, success_callback varchar(1024), user_data text)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static createChat(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "peerID"    # I

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS `chat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "` (mid int, sender int, text text, time int, attachments blob, readstate bool)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static createChatStats(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `stats` (peer int, last_update int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static createGroups(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 39
    const-string/jumbo v0, "DROP TABLE IF EXISTS `groups`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "CREATE TABLE `groups` (id int, title text, photo varchar(500), domain varchar(500), activity varchar(500), type int, event_time int, closed int, admin bool, admin_level int, members_count int, verified int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static createPosts(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 15
    const-string/jumbo v0, "DROP TABLE IF EXISTS `news`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "DROP TABLE IF EXISTS `news_comments`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    const-string/jumbo v0, "DROP TABLE IF EXISTS `wall`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "DROP TABLE IF EXISTS `feed_lists`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "CREATE TABLE `news` (pid int, uid int, text text, time int, likes int, comments int, username varchar(150), userphoto varchar(200), retweet_uid int, retweet_username varchar(150), attachments blob, flags int, retweet_text text, retweet_user_photo varchar(150), retweet_orig_id int, retweet_orig_time int, retweets int, retweet_type int, created_by int not null, platform int not null, extra string, order_position int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "CREATE TABLE `feed_lists` (lid int not null, title varchat(500))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    return-void
.end method
