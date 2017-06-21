.class public final Lcom/vkcoffee/android/orm/EntityManager;
.super Ljava/lang/Object;
.source "EntityManager.java"

# interfaces
.implements Lcom/vkcoffee/android/orm/AbsEntityManager;


# static fields
.field public static final WHERE_CLAUSE:Ljava/lang/String; = " = ?"

.field public static final WHERE_IN:Ljava/lang/String; = " IN (?)"


# instance fields
.field final mConfig:Lcom/vkcoffee/android/orm/ORM$Config;

.field final mContext:Landroid/content/Context;

.field mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field mDbFile:Ljava/io/File;

.field final mDbName:Ljava/lang/String;

.field final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/vkcoffee/android/orm/ORM$Config;->getInstance(Landroid/content/Context;)Lcom/vkcoffee/android/orm/ORM$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mConfig:Lcom/vkcoffee/android/orm/ORM$Config;

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mConfig:Lcom/vkcoffee/android/orm/ORM$Config;

    iget-object v0, v0, Lcom/vkcoffee/android/orm/ORM$Config;->mDbName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDbName:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->openConnection()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Lcom/vkcoffee/android/orm/ORM$Config;->getInstance(Landroid/content/Context;)Lcom/vkcoffee/android/orm/ORM$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mConfig:Lcom/vkcoffee/android/orm/ORM$Config;

    .line 49
    iput-object p2, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDbName:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->openConnection()V

    .line 51
    return-void
.end method


# virtual methods
.method public backupDatabase(Ljava/io/File;)V
    .locals 1
    .param p1, "backupTo"    # Ljava/io/File;

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->close()V

    .line 476
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vkcoffee/android/orm/ORM;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 477
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->openConnection()V

    .line 478
    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->beginTransactionNonExclusive()V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0
.end method

.method beginTransactionNonExclusive()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 434
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    monitor-exit v1

    .line 61
    :cond_0
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 439
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 440
    return-void
.end method

.method public create(Ljava/lang/Object;)J
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)J"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 108
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v1

    .line 109
    .local v1, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {v1, v0, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->bind(Landroid/content/ContentValues;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    monitor-exit v3

    return-wide v4

    .line 112
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public create(Ljava/util/List;)J
    .locals 12
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v9, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 148
    const-wide/16 v0, 0x0

    .line 149
    .local v0, "count":J
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v8

    if-nez v8, :cond_1

    .line 150
    const/4 v7, 0x0

    .line 151
    .local v7, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    const/4 v4, 0x0

    .line 153
    .local v4, "helper":Landroid/database/DatabaseUtils$InsertHelper;
    const/4 v6, 0x0

    .local v6, "i":I
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .local v2, "entitiesSize":I
    move-object v5, v4

    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .local v5, "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :goto_0
    if-ge v6, v2, :cond_0

    .line 154
    :try_start_2
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 155
    .local v3, "entity":Ljava/lang/Object;, "TT;"
    if-nez v5, :cond_3

    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v7

    .line 157
    new-instance v4, Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v7}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v8, v10}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 159
    .end local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 160
    invoke-virtual {v7, v4, v3}, Lcom/vkcoffee/android/orm/ClassMetaData;->bind(Landroid/database/DatabaseUtils$InsertHelper;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    add-long/2addr v0, v10

    .line 153
    add-int/lit8 v6, v6, 0x1

    move-object v5, v4

    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_0

    .line 164
    .end local v3    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    if-eqz v5, :cond_1

    .line 165
    :try_start_4
    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 169
    .end local v2    # "entitiesSize":I
    .end local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .end local v6    # "i":I
    .end local v7    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :cond_1
    monitor-exit v9

    return-wide v0

    .line 164
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v6    # "i":I
    .restart local v7    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v4, :cond_2

    .line 165
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    :cond_2
    throw v8

    .line 170
    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .end local v6    # "i":I
    .end local v7    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 164
    .restart local v2    # "entitiesSize":I
    .restart local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v6    # "i":I
    .restart local v7    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_2

    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v3    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :cond_3
    move-object v4, v5

    .end local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_1
.end method

.method public varargs create([Ljava/lang/Object;)J
    .locals 12
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)J"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    iget-object v9, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 119
    const-wide/16 v0, 0x0

    .line 120
    .local v0, "count":J
    if-eqz p1, :cond_1

    :try_start_0
    array-length v8, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gez v8, :cond_1

    .line 121
    const/4 v7, 0x0

    .line 122
    .local v7, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    const/4 v4, 0x0

    .line 124
    .local v4, "helper":Landroid/database/DatabaseUtils$InsertHelper;
    const/4 v6, 0x0

    .local v6, "i":I
    :try_start_1
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "entitiesLength":I
    move-object v5, v4

    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .local v5, "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :goto_0
    if-ge v6, v2, :cond_0

    .line 125
    :try_start_2
    aget-object v3, p1, v6

    .line 126
    .local v3, "entity":Ljava/lang/Object;, "TT;"
    if-nez v5, :cond_3

    .line 127
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v7

    .line 128
    new-instance v4, Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v7}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v8, v10}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 130
    .end local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 131
    invoke-virtual {v7, v4, v3}, Lcom/vkcoffee/android/orm/ClassMetaData;->bind(Landroid/database/DatabaseUtils$InsertHelper;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    add-long/2addr v0, v10

    .line 124
    add-int/lit8 v6, v6, 0x1

    move-object v5, v4

    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_0

    .line 135
    .end local v3    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    if-eqz v5, :cond_1

    .line 136
    :try_start_4
    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 140
    .end local v2    # "entitiesLength":I
    .end local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .end local v6    # "i":I
    .end local v7    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :cond_1
    monitor-exit v9

    return-wide v0

    .line 135
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v6    # "i":I
    .restart local v7    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v4, :cond_2

    .line 136
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    :cond_2
    throw v8

    .line 141
    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .end local v6    # "i":I
    .end local v7    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 135
    .restart local v2    # "entitiesLength":I
    .restart local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v6    # "i":I
    .restart local v7    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_2

    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v3    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :cond_3
    move-object v4, v5

    .end local v5    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_1
.end method

.method protected createQuery(Lcom/vkcoffee/android/orm/ClassMetaData;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vkcoffee/android/orm/ClassMetaData",
            "<TT;>;)",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "data":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    new-instance v0, Lcom/vkcoffee/android/orm/Query;

    invoke-direct {v0, p1, p0}, Lcom/vkcoffee/android/orm/Query;-><init>(Lcom/vkcoffee/android/orm/ClassMetaData;Lcom/vkcoffee/android/orm/AbsEntityManager;)V

    return-object v0
.end method

.method public createQuery(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/Query;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "entity":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/vkcoffee/android/orm/Query;

    invoke-static {p1}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/vkcoffee/android/orm/Query;-><init>(Lcom/vkcoffee/android/orm/ClassMetaData;Lcom/vkcoffee/android/orm/AbsEntityManager;)V

    return-object v0
.end method

.method public createSQLQuery(Ljava/lang/Class;Ljava/lang/String;)Lcom/vkcoffee/android/orm/RawQuery;
    .locals 2
    .param p2, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vkcoffee/android/orm/RawQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "entity":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/vkcoffee/android/orm/RawQuery;

    invoke-static {p1}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/vkcoffee/android/orm/RawQuery;-><init>(Lcom/vkcoffee/android/orm/EntityManager;Lcom/vkcoffee/android/orm/ClassMetaData;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs cursorQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/Class;J)I
    .locals 8
    .param p1, "entity"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "id"    # J

    .prologue
    .line 356
    iget-object v2, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_0
    invoke-static {p1}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v0

    .line 358
    .local v0, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 359
    .end local v0    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs delete(Ljava/lang/Class;[J)I
    .locals 16
    .param p1, "entity"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ids"    # [J

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 278
    if-eqz p2, :cond_2

    :try_start_0
    move-object/from16 v0, p2

    array-length v9, v0

    if-lez v9, :cond_2

    .line 279
    invoke-static/range {p1 .. p1}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v7

    .line 280
    .local v7, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 282
    .local v2, "firstTime":Z
    const/4 v3, 0x0

    .local v3, "i":I
    move-object/from16 v0, p2

    array-length v6, v0

    .local v6, "idsLength":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 283
    aget-wide v4, p2, v3

    .line 284
    .local v4, "id":J
    if-eqz v2, :cond_0

    .line 285
    const/4 v2, 0x0

    .line 289
    :goto_1
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    :cond_0
    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    .end local v2    # "firstTime":Z
    .end local v3    # "i":I
    .end local v4    # "id":J
    .end local v6    # "idsLength":I
    .end local v7    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 291
    .restart local v2    # "firstTime":Z
    .restart local v3    # "i":I
    .restart local v6    # "idsLength":I
    .restart local v7    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v7}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryColumnName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " IN (?)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v9, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    monitor-exit v10

    .line 293
    .end local v2    # "firstTime":Z
    .end local v3    # "i":I
    .end local v6    # "idsLength":I
    .end local v7    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return v9

    :cond_2
    const/4 v9, 0x0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public delete(Ljava/lang/Object;)I
    .locals 10
    .param p1, "entity"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v3, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 365
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 367
    .local v1, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    :try_start_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    .line 370
    :goto_0
    return v2

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 370
    monitor-exit v3

    goto :goto_0

    .line 372
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public delete(Ljava/util/List;)I
    .locals 14
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v7, 0x0

    .line 329
    iget-object v8, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 330
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    .line 332
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v5

    .line 333
    .local v5, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 335
    .local v3, "firstTime":Z
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "entitiesSize":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 336
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 337
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_0

    .line 338
    const/4 v3, 0x0

    .line 342
    :goto_1
    invoke-virtual {v5, v2}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    :cond_0
    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 345
    .end local v1    # "entitiesSize":I
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    .end local v3    # "firstTime":Z
    .end local v4    # "i":I
    .end local v5    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 351
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 344
    .restart local v1    # "entitiesSize":I
    .restart local v3    # "firstTime":Z
    .restart local v4    # "i":I
    .restart local v5    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v5}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryColumnName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " IN (?)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    :try_start_4
    monitor-exit v8

    .line 349
    .end local v1    # "entitiesSize":I
    .end local v3    # "firstTime":Z
    .end local v4    # "i":I
    .end local v5    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return v7

    :cond_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public varargs delete([Ljava/lang/Object;)I
    .locals 14
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .prologue
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    const/4 v7, 0x0

    .line 301
    iget-object v8, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 302
    if-eqz p1, :cond_2

    :try_start_0
    array-length v9, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v9, :cond_2

    .line 304
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, p1, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v5

    .line 305
    .local v5, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 307
    .local v3, "firstTime":Z
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v1, p1

    .local v1, "entitiesLength":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 308
    aget-object v2, p1, v4

    .line 309
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_0

    .line 310
    const/4 v3, 0x0

    .line 314
    :goto_1
    invoke-virtual {v5, v2}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 312
    :cond_0
    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 317
    .end local v1    # "entitiesLength":I
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    .end local v3    # "firstTime":Z
    .end local v4    # "i":I
    .end local v5    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 323
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 316
    .restart local v1    # "entitiesLength":I
    .restart local v3    # "firstTime":Z
    .restart local v4    # "i":I
    .restart local v5    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v5}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryColumnName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " IN (?)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    :try_start_4
    monitor-exit v8

    .line 321
    .end local v1    # "entitiesLength":I
    .end local v3    # "firstTime":Z
    .end local v4    # "i":I
    .end local v5    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return v7

    :cond_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public deleteAll(Ljava/lang/Class;)I
    .locals 5
    .param p1, "entity"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 377
    iget-object v1, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p1}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs executeRawQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "entity":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 384
    iget-object v4, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 385
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 386
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {p1}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 388
    .local v1, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 389
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 390
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/orm/ClassMetaData;->parse(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 398
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 400
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 398
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    monitor-exit v4

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    return-object v2

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public find(Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 14
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "id"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;J)TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "entity":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v12, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 67
    :try_start_0
    invoke-static {p1}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v11

    .line 68
    .local v11, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v11}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 70
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    invoke-virtual {v11, v10}, Lcom/vkcoffee/android/orm/ClassMetaData;->parse(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 77
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    monitor-exit v12

    :goto_0
    return-object v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 77
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    monitor-exit v12

    goto :goto_0

    .line 79
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 77
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 14
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "entity":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v12, 0x0

    .line 85
    iget-object v13, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 86
    :try_start_0
    invoke-static {p1}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v11

    .line 87
    .local v11, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v11}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 89
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 90
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {v11, v10}, Lcom/vkcoffee/android/orm/ClassMetaData;->parse(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 101
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 99
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    monitor-exit v13

    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    return-object v12

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public getColumnName(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/orm/ClassMetaData;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 459
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/orm/EntityManager;->getColumnName(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->openConnection()V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method getDatabaseFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDbFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDbFile:Ljava/io/File;

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDbFile:Ljava/io/File;

    return-object v0
.end method

.method public getPrimaryKey(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryColumnName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method migrateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 512
    iget-object v10, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 513
    :try_start_0
    iget-object v8, p0, Lcom/vkcoffee/android/orm/EntityManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/vkcoffee/android/orm/ClassLoader;->loadClasses(Landroid/content/Context;)V

    .line 515
    iget-object v8, p0, Lcom/vkcoffee/android/orm/EntityManager;->mContext:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDbName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_meta"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 516
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    .line 518
    .local v7, "versions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/vkcoffee/android/orm/ClassLoader;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/orm/ClassMetaData;

    .line 519
    .local v0, "data":Lcom/vkcoffee/android/orm/ClassMetaData;
    invoke-virtual {v0}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, "modelRecordName":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 521
    .local v6, "version":Ljava/lang/Object;
    if-nez v6, :cond_0

    move v8, v9

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 522
    .local v3, "intVersion":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 523
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->createRecord(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 536
    .end local v0    # "data":Lcom/vkcoffee/android/orm/ClassMetaData;
    .end local v3    # "intVersion":Ljava/lang/Integer;
    .end local v4    # "modelRecordName":Ljava/lang/String;
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    .end local v6    # "version":Ljava/lang/Object;
    .end local v7    # "versions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 521
    .restart local v0    # "data":Lcom/vkcoffee/android/orm/ClassMetaData;
    .restart local v4    # "modelRecordName":Ljava/lang/String;
    .restart local v5    # "preferences":Landroid/content/SharedPreferences;
    .restart local v6    # "version":Ljava/lang/Object;
    .restart local v7    # "versions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :try_start_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    .line 524
    .restart local v3    # "intVersion":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/orm/ClassMetaData;->isMigrationRequired(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 525
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->migrate(ILandroid/database/sqlite/SQLiteDatabase;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 527
    :cond_2
    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 531
    .end local v0    # "data":Lcom/vkcoffee/android/orm/ClassMetaData;
    .end local v3    # "intVersion":Ljava/lang/Integer;
    .end local v4    # "modelRecordName":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/Object;
    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 532
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 533
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 535
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 536
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    return-void
.end method

.method openConnection()V
    .locals 6

    .prologue
    .line 494
    iget-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Lcom/vkcoffee/android/orm/EntityManager$1;

    iget-object v2, p0, Lcom/vkcoffee/android/orm/EntityManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDbName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/vkcoffee/android/orm/EntityManager;->mConfig:Lcom/vkcoffee/android/orm/ORM$Config;

    iget v5, v1, Lcom/vkcoffee/android/orm/ORM$Config;->mDbVersion:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/orm/EntityManager$1;-><init>(Lcom/vkcoffee/android/orm/EntityManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 505
    invoke-virtual {v0}, Lcom/vkcoffee/android/orm/EntityManager$1;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 507
    :cond_0
    return-void
.end method

.method public restoreBackup(Ljava/io/File;)V
    .locals 1
    .param p1, "restoreFrom"    # Ljava/io/File;

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->close()V

    .line 482
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vkcoffee/android/orm/ORM;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 483
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->openConnection()V

    .line 484
    return-void
.end method

.method public rollback()V
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 445
    return-void
.end method

.method public save(Ljava/lang/Object;)I
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 177
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 180
    .local v2, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :try_start_1
    invoke-virtual {v2, v0, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->bind(Landroid/content/ContentValues;Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->getPrimaryKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    :try_start_2
    monitor-exit v4

    return v3

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 185
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public save(Ljava/util/Collection;)I
    .locals 12
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "entities":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v6, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "count":I
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 252
    const/4 v2, 0x0

    .line 253
    .local v2, "helper":Landroid/database/DatabaseUtils$InsertHelper;
    const/4 v4, 0x0

    .line 255
    .local v4, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    move-object v3, v2

    .end local v2    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .local v3, "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :goto_0
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 256
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_3

    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v4

    .line 258
    new-instance v2, Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v4}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 260
    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v2    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForReplace()V

    .line 261
    invoke-virtual {v4, v2, v1}, Lcom/vkcoffee/android/orm/ClassMetaData;->bind(Landroid/database/DatabaseUtils$InsertHelper;Ljava/lang/Object;)V

    .line 262
    int-to-long v8, v0

    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v0, v8

    move-object v3, v2

    .line 263
    .end local v2    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_0

    .line 265
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    if-eqz v3, :cond_1

    .line 266
    :try_start_4
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 270
    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .end local v4    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :cond_1
    monitor-exit v6

    return v0

    .line 265
    .restart local v2    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v4    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_2

    .line 266
    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    :cond_2
    throw v5

    .line 271
    .end local v2    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .end local v4    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 265
    .restart local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v4    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v2    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_2

    .end local v2    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v1    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :cond_3
    move-object v2, v3

    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v2    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_1
.end method

.method public save(Ljava/util/List;)I
    .locals 14
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v8, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "count":I
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-nez v7, :cond_1

    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, "helper":Landroid/database/DatabaseUtils$InsertHelper;
    const/4 v6, 0x0

    .line 226
    .local v6, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, "entitiesSize":I
    move-object v4, v3

    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .local v4, "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :goto_0
    if-ge v5, v1, :cond_0

    .line 227
    :try_start_2
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 228
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_3

    .line 229
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v6

    .line 230
    new-instance v3, Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v6}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v7, v9}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 232
    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForReplace()V

    .line 233
    invoke-virtual {v6, v3, v2}, Lcom/vkcoffee/android/orm/ClassMetaData;->bind(Landroid/database/DatabaseUtils$InsertHelper;Ljava/lang/Object;)V

    .line 234
    int-to-long v10, v0

    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v0, v10

    .line 226
    add-int/lit8 v5, v5, 0x1

    move-object v4, v3

    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_0

    .line 237
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    if-eqz v4, :cond_1

    .line 238
    :try_start_4
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 242
    .end local v1    # "entitiesSize":I
    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .end local v5    # "i":I
    .end local v6    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :cond_1
    monitor-exit v8

    return v0

    .line 237
    .restart local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v5    # "i":I
    .restart local v6    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_2

    .line 238
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    :cond_2
    throw v7

    .line 243
    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .end local v5    # "i":I
    .end local v6    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 237
    .restart local v1    # "entitiesSize":I
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v5    # "i":I
    .restart local v6    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_2

    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v2    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :cond_3
    move-object v3, v4

    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_1
.end method

.method public varargs save([Ljava/lang/Object;)I
    .locals 14
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    iget-object v8, p0, Lcom/vkcoffee/android/orm/EntityManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "count":I
    if-eqz p1, :cond_1

    :try_start_0
    array-length v7, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v7, :cond_1

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "helper":Landroid/database/DatabaseUtils$InsertHelper;
    const/4 v6, 0x0

    .line 197
    .local v6, "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :try_start_1
    array-length v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "entitiesLength":I
    move-object v4, v3

    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .local v4, "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :goto_0
    if-ge v5, v1, :cond_0

    .line 198
    :try_start_2
    aget-object v2, p1, v5

    .line 199
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_3

    .line 200
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/vkcoffee/android/orm/ClassLoader;->get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v6

    .line 201
    new-instance v3, Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v6}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v7, v9}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 203
    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForReplace()V

    .line 204
    invoke-virtual {v6, v3, v2}, Lcom/vkcoffee/android/orm/ClassMetaData;->bind(Landroid/database/DatabaseUtils$InsertHelper;Ljava/lang/Object;)V

    .line 205
    int-to-long v10, v0

    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v0, v10

    .line 197
    add-int/lit8 v5, v5, 0x1

    move-object v4, v3

    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_0

    .line 208
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    if-eqz v4, :cond_1

    .line 209
    :try_start_4
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 213
    .end local v1    # "entitiesLength":I
    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .end local v5    # "i":I
    .end local v6    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :cond_1
    monitor-exit v8

    return v0

    .line 208
    .restart local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v5    # "i":I
    .restart local v6    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_2

    .line 209
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    :cond_2
    throw v7

    .line 214
    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .end local v5    # "i":I
    .end local v6    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 208
    .restart local v1    # "entitiesLength":I
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v5    # "i":I
    .restart local v6    # "metaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_2

    .end local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v2    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    :cond_3
    move-object v3, v4

    .end local v4    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    .restart local v3    # "helper":Landroid/database/DatabaseUtils$InsertHelper;
    goto :goto_1
.end method
