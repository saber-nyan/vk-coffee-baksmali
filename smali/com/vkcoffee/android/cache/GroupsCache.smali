.class public Lcom/vkcoffee/android/cache/GroupsCache;
.super Ljava/lang/Object;
.source "GroupsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static add(Lcom/vkcoffee/android/api/Group;Landroid/content/Context;)V
    .locals 6
    .param p0, "g"    # Lcom/vkcoffee/android/api/Group;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    new-instance v1, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 167
    .local v1, "helper":Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "id"

    iget v5, p0, Lcom/vkcoffee/android/api/Group;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string/jumbo v4, "title"

    iget-object v5, p0, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v4, "photo"

    iget-object v5, p0, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v4, "activity"

    iget-object v5, p0, Lcom/vkcoffee/android/api/Group;->activity:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v4, "type"

    iget v5, p0, Lcom/vkcoffee/android/api/Group;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string/jumbo v4, "closed"

    iget v5, p0, Lcom/vkcoffee/android/api/Group;->isClosed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string/jumbo v4, "admin"

    iget-boolean v5, p0, Lcom/vkcoffee/android/api/Group;->isAdmin:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 177
    const-string/jumbo v4, "admin_level"

    iget v5, p0, Lcom/vkcoffee/android/api/Group;->adminLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const-string/jumbo v4, "domain"

    iget-object v5, p0, Lcom/vkcoffee/android/api/Group;->domain:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v4, "event_time"

    iget v5, p0, Lcom/vkcoffee/android/api/Group;->startTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string/jumbo v5, "verified"

    iget-boolean v4, p0, Lcom/vkcoffee/android/api/Group;->verified:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string/jumbo v4, "groups"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 186
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->close()V

    .line 187
    return-void

    .line 180
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 182
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 183
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error writing friends cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static get()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v15, 0x0

    const/4 v14, 0x1

    .line 48
    new-instance v10, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 49
    .local v10, "helper":Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 50
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/Group;>;"
    :try_start_0
    const-string/jumbo v1, "groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 53
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 54
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 55
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v12, "values":Landroid/content/ContentValues;
    :cond_0
    invoke-static {v8, v12}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 59
    new-instance v9, Lcom/vkcoffee/android/api/Group;

    invoke-direct {v9}, Lcom/vkcoffee/android/api/Group;-><init>()V

    .line 60
    .local v9, "group":Lcom/vkcoffee/android/api/Group;
    const-string/jumbo v1, "id"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkcoffee/android/api/Group;->id:I

    .line 61
    const-string/jumbo v1, "title"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "photo"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "activity"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkcoffee/android/api/Group;->activity:Ljava/lang/String;

    .line 64
    const-string/jumbo v1, "domain"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkcoffee/android/api/Group;->domain:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "type"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkcoffee/android/api/Group;->type:I

    .line 66
    const-string/jumbo v1, "event_time"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkcoffee/android/api/Group;->startTime:I

    .line 67
    const-string/jumbo v1, "closed"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkcoffee/android/api/Group;->isClosed:I

    .line 68
    const-string/jumbo v1, "admin"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v14, :cond_2

    move v1, v14

    :goto_0
    iput-boolean v1, v9, Lcom/vkcoffee/android/api/Group;->isAdmin:Z

    .line 69
    const-string/jumbo v1, "admin_level"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkcoffee/android/api/Group;->adminLevel:I

    .line 70
    const-string/jumbo v1, "verified"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v14, :cond_3

    move v1, v14

    :goto_1
    iput-boolean v1, v9, Lcom/vkcoffee/android/api/Group;->verified:Z

    .line 71
    const-string/jumbo v1, "members_count"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkcoffee/android/api/Group;->members_count:I

    .line 74
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 81
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "group":Lcom/vkcoffee/android/api/Group;
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 82
    invoke-virtual {v10}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    :goto_3
    return-object v11

    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "group":Lcom/vkcoffee/android/api/Group;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_2
    move v1, v15

    .line 68
    goto :goto_0

    :cond_3
    move v1, v15

    .line 70
    goto :goto_1

    .line 77
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "group":Lcom/vkcoffee/android/api/Group;
    .end local v12    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v13

    .line 78
    .local v13, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error reading groups cache DB!"

    invoke-static {v1, v2, v13}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 83
    .end local v13    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static get(Landroid/content/Context;I)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v11, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 90
    .local v11, "helper":Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v11}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 91
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/Group;>;"
    const/4 v12, 0x0

    .line 94
    .local v12, "i":I
    :try_start_0
    const-string/jumbo v2, "groups"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 95
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 96
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v14, "values":Landroid/content/ContentValues;
    :cond_0
    invoke-static {v9, v14}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 100
    new-instance v10, Lcom/vkcoffee/android/api/Group;

    invoke-direct {v10}, Lcom/vkcoffee/android/api/Group;-><init>()V

    .line 101
    .local v10, "group":Lcom/vkcoffee/android/api/Group;
    const-string/jumbo v2, "id"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/vkcoffee/android/api/Group;->id:I

    .line 102
    const-string/jumbo v2, "title"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    .line 103
    const-string/jumbo v2, "photo"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    .line 104
    const-string/jumbo v2, "activity"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/vkcoffee/android/api/Group;->activity:Ljava/lang/String;

    .line 105
    const-string/jumbo v2, "domain"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/vkcoffee/android/api/Group;->domain:Ljava/lang/String;

    .line 106
    const-string/jumbo v2, "type"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/vkcoffee/android/api/Group;->type:I

    .line 107
    const-string/jumbo v2, "event_time"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/vkcoffee/android/api/Group;->startTime:I

    .line 108
    const-string/jumbo v2, "closed"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/vkcoffee/android/api/Group;->isClosed:I

    .line 109
    const-string/jumbo v2, "admin"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v10, Lcom/vkcoffee/android/api/Group;->isAdmin:Z

    .line 110
    const-string/jumbo v2, "admin_level"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/vkcoffee/android/api/Group;->adminLevel:I

    .line 111
    const-string/jumbo v2, "verified"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v10, Lcom/vkcoffee/android/api/Group;->verified:Z

    .line 112
    const-string/jumbo v2, "members_count"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/vkcoffee/android/api/Group;->members_count:I

    .line 113
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v12, v12, 0x1

    .line 115
    move/from16 v0, p1

    if-ge v12, v0, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 121
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "group":Lcom/vkcoffee/android/api/Group;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 122
    invoke-virtual {v11}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :goto_2
    return-object v13

    .line 111
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "group":Lcom/vkcoffee/android/api/Group;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 117
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "group":Lcom/vkcoffee/android/api/Group;
    .end local v14    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 118
    .local v15, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error reading groups cache DB!"

    invoke-static {v2, v3, v15}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 123
    .end local v15    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static hasEntries(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 203
    :try_start_0
    new-instance v2, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 204
    .local v2, "helper":Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 205
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v6, "SELECT COUNT(*) FROM `groups`"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 206
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 207
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v3, 0x1

    .line 208
    .local v3, "result":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 210
    invoke-virtual {v2}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;
    .end local v3    # "result":Z
    :goto_1
    return v3

    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "helper":Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;
    :cond_0
    move v3, v5

    .line 207
    goto :goto_0

    .line 212
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;
    :catch_0
    move-exception v4

    .line 213
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v6, "vk"

    const-string/jumbo v7, "Error reading groups cache DB!"

    invoke-static {v6, v7, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v5

    .line 215
    goto :goto_1
.end method

.method public static remove(ILandroid/content/Context;)V
    .locals 6
    .param p0, "gid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    new-instance v1, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 191
    .local v1, "helper":Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 193
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v3, "groups"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "`id`="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 198
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->close()V

    .line 199
    return-void

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "Error writing groups cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static replace(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/Group;>;"
    new-instance v2, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;

    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, "helper":Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;
    const/4 v0, 0x0

    .line 132
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v2}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 134
    const-string/jumbo v5, "groups"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/Group;

    .line 136
    .local v1, "g":Lcom/vkcoffee/android/api/Group;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "id"

    iget v7, v1, Lcom/vkcoffee/android/api/Group;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string/jumbo v5, "title"

    iget-object v7, v1, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v5, "photo"

    iget-object v7, v1, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v5, "activity"

    iget-object v7, v1, Lcom/vkcoffee/android/api/Group;->activity:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v5, "type"

    iget v7, v1, Lcom/vkcoffee/android/api/Group;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string/jumbo v5, "closed"

    iget v7, v1, Lcom/vkcoffee/android/api/Group;->isClosed:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string/jumbo v5, "admin"

    iget-boolean v7, v1, Lcom/vkcoffee/android/api/Group;->isAdmin:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 144
    const-string/jumbo v5, "admin_level"

    iget v7, v1, Lcom/vkcoffee/android/api/Group;->adminLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string/jumbo v5, "event_time"

    iget v7, v1, Lcom/vkcoffee/android/api/Group;->startTime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string/jumbo v7, "verified"

    iget-boolean v5, v1, Lcom/vkcoffee/android/api/Group;->verified:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string/jumbo v5, "domain"

    iget-object v7, v1, Lcom/vkcoffee/android/api/Group;->domain:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v5, "members_count"

    iget v7, v1, Lcom/vkcoffee/android/api/Group;->members_count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string/jumbo v5, "groups"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 152
    .end local v1    # "g":Lcom/vkcoffee/android/api/Group;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 153
    .local v4, "x":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "Error writing groups cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 159
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 162
    :cond_1
    invoke-virtual {v2}, Lcom/vkcoffee/android/cache/GroupsCache$CacheOpenHelper;->close()V

    .line 163
    return-void

    .line 146
    .restart local v1    # "g":Lcom/vkcoffee/android/api/Group;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 151
    .end local v1    # "g":Lcom/vkcoffee/android/api/Group;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .line 155
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    throw v5
.end method
