.class Lcom/vkcoffee/android/cache/ChatCache$CacheOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ChatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/cache/ChatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheOpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/vkcoffee/android/CustomDB;->CHATS_DB:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-nez v0, :cond_0

    .line 44
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 47
    .local v2, "xx":Ljava/lang/Exception;
    const-wide/16 v4, 0xa

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 48
    :catch_1
    move-exception v1

    .line 49
    .local v1, "x":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 53
    .end local v1    # "x":Ljava/lang/Exception;
    .end local v2    # "xx":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-nez v0, :cond_0

    .line 60
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 63
    .local v2, "xx":Ljava/lang/Exception;
    const-wide/16 v4, 0xa

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 64
    :catch_1
    move-exception v1

    .line 65
    .local v1, "x":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 69
    .end local v1    # "x":Ljava/lang/Exception;
    .end local v2    # "xx":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 29
    const-string/jumbo v0, "PRAGMA writable_schema = 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    const-string/jumbo v0, "delete from sqlite_master where type = \'table\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "PRAGMA writable_schema = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcom/vkcoffee/android/cache/CacheTables;->createChatStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 33
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/cache/ChatCache$CacheOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    return-void
.end method
