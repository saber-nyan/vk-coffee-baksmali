.class public Lcom/vkcoffee/android/cache/FileLruCache;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/cache/FileLruCache$Entry;,
        Lcom/vkcoffee/android/cache/FileLruCache$Editor;
    }
.end annotation


# instance fields
.field final mJournalEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/cache/FileLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final mJournalFile:Ljava/io/File;

.field final mMaxSize:J

.field final mRootPath:Ljava/io/File;

.field total:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 4
    .param p1, "path"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalEntries:Ljava/util/Map;

    .line 32
    iput-wide p2, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mMaxSize:J

    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mRootPath:Ljava/io/File;

    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mRootPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mRootPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to create path directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mRootPath:Ljava/io/File;

    const-string/jumbo v2, "lru_cache.journal"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalFile:Ljava/io/File;

    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to create cache journal"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/cache/FileLruCache;->readJournal()V

    .line 46
    return-void
.end method


# virtual methods
.method final declared-synchronized addEntry(Lcom/vkcoffee/android/cache/FileLruCache$Editor;J)Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    .locals 8
    .param p1, "editor"    # Lcom/vkcoffee/android/cache/FileLruCache$Editor;
    .param p2, "lastRecentlyUsed"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/vkcoffee/android/cache/FileLruCache$Entry;

    iget-object v3, p1, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->key:Ljava/lang/String;

    iget-object v0, p1, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v2, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/cache/FileLruCache$Entry;-><init>(Lcom/vkcoffee/android/cache/FileLruCache;Ljava/lang/String;JJ)V

    .line 124
    .local v1, "entry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    iget-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalEntries:Ljava/util/Map;

    iget-object v2, p1, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->key:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget v0, p0, Lcom/vkcoffee/android/cache/FileLruCache;->total:I

    int-to-long v2, v0

    iget-wide v4, v1, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->size:J

    add-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/vkcoffee/android/cache/FileLruCache;->total:I

    .line 126
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/cache/FileLruCache;->trim(Lcom/vkcoffee/android/cache/FileLruCache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-object v1

    .line 123
    .end local v1    # "entry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalEntries:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/cache/FileLruCache;->convertKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected convertKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 173
    return-object p1
.end method

.method public final declared-synchronized get(Ljava/lang/String;)Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalEntries:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/cache/FileLruCache;->convertKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;

    .line 51
    .local v0, "entry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->lastRecentlyUsed:J

    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/cache/FileLruCache;->updateJournal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-object v0

    .line 50
    .end local v0    # "entry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized insert(Ljava/lang/String;)Lcom/vkcoffee/android/cache/FileLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/vkcoffee/android/cache/FileLruCache$Editor;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/cache/FileLruCache;->convertKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/cache/FileLruCache$Editor;-><init>(Lcom/vkcoffee/android/cache/FileLruCache;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized readJournal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    monitor-enter p0

    const/4 v9, 0x0

    .line 69
    .local v9, "is":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/vkcoffee/android/cache/FileLruCache;->total:I

    .line 70
    iget-object v2, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .end local v9    # "is":Ljava/io/DataInputStream;
    .local v10, "is":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 74
    .local v0, "entriesCount":I
    if-lez v0, :cond_0

    .line 75
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_0

    .line 76
    new-instance v1, Lcom/vkcoffee/android/cache/FileLruCache$Entry;

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/cache/FileLruCache$Entry;-><init>(Lcom/vkcoffee/android/cache/FileLruCache;Ljava/lang/String;JJ)V

    .line 77
    .local v1, "entry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    iget-object v2, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalEntries:Ljava/util/Map;

    iget-object v3, v1, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget v2, p0, Lcom/vkcoffee/android/cache/FileLruCache;->total:I

    int-to-long v2, v2

    iget-wide v4, v1, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->size:J

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/vkcoffee/android/cache/FileLruCache;->total:I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 75
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "entry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    .end local v8    # "i":I
    :cond_0
    :try_start_3
    invoke-static {v10}, Lcom/vkcoffee/android/utils/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v9, v10

    .line 86
    .end local v0    # "entriesCount":I
    .end local v10    # "is":Ljava/io/DataInputStream;
    .restart local v9    # "is":Ljava/io/DataInputStream;
    :goto_1
    monitor-exit p0

    return-void

    .line 81
    :catch_0
    move-exception v2

    .line 84
    :goto_2
    :try_start_4
    invoke-static {v9}, Lcom/vkcoffee/android/utils/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v2

    :goto_3
    monitor-exit p0

    throw v2

    .line 84
    :catchall_1
    move-exception v2

    :goto_4
    :try_start_5
    invoke-static {v9}, Lcom/vkcoffee/android/utils/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v9    # "is":Ljava/io/DataInputStream;
    .restart local v10    # "is":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "is":Ljava/io/DataInputStream;
    .restart local v9    # "is":Ljava/io/DataInputStream;
    goto :goto_4

    .line 81
    .end local v9    # "is":Ljava/io/DataInputStream;
    .restart local v10    # "is":Ljava/io/DataInputStream;
    :catch_1
    move-exception v2

    move-object v9, v10

    .end local v10    # "is":Ljava/io/DataInputStream;
    .restart local v9    # "is":Ljava/io/DataInputStream;
    goto :goto_2

    .line 68
    .end local v9    # "is":Ljava/io/DataInputStream;
    .restart local v0    # "entriesCount":I
    .restart local v10    # "is":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v2

    move-object v9, v10

    .end local v10    # "is":Ljava/io/DataInputStream;
    .restart local v9    # "is":Ljava/io/DataInputStream;
    goto :goto_3
.end method

.method final declared-synchronized trim(Lcom/vkcoffee/android/cache/FileLruCache$Entry;)V
    .locals 8
    .param p1, "exclude"    # Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :cond_0
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/vkcoffee/android/cache/FileLruCache;->total:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mMaxSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "lastUsedEntry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    iget-object v2, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;

    .line 107
    .local v0, "entry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    if-eqz v1, :cond_2

    iget-wide v4, v0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->lastRecentlyUsed:J

    iget-wide v6, v1, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->lastRecentlyUsed:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    :cond_2
    if-eq v0, p1, :cond_1

    .line 108
    move-object v1, v0

    goto :goto_1

    .line 111
    .end local v0    # "entry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    :cond_3
    if-eqz v1, :cond_0

    .line 112
    iget-object v2, v1, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 113
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Unable to delete unused file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v1    # "lastUsedEntry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 115
    .restart local v1    # "lastUsedEntry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalEntries:Ljava/util/Map;

    iget-object v3, v1, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget v2, p0, Lcom/vkcoffee/android/cache/FileLruCache;->total:I

    int-to-long v2, v2

    iget-wide v4, v1, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->size:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/vkcoffee/android/cache/FileLruCache;->total:I

    goto :goto_0

    .line 119
    .end local v1    # "lastUsedEntry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    :cond_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/cache/FileLruCache;->updateJournal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized updateJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    const/4 v1, 0x0

    .line 91
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 92
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    iget-object v3, p0, Lcom/vkcoffee/android/cache/FileLruCache;->mJournalEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;

    .line 94
    .local v0, "entry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    iget-object v4, v0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 95
    iget-wide v4, v0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 96
    iget-wide v4, v0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->lastRecentlyUsed:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "entry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    :catchall_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/vkcoffee/android/utils/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    :catchall_1
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    .line 99
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :cond_0
    :try_start_3
    invoke-static {v2}, Lcom/vkcoffee/android/utils/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 101
    monitor-exit p0

    return-void

    .line 99
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v3

    goto :goto_1

    .line 89
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_2
.end method
