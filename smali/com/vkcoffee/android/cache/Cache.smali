.class public Lcom/vkcoffee/android/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;,
        Lcom/vkcoffee/android/cache/Cache$OpenHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static lockSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkcoffee/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    return-void
.end method

.method public static addMessages(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Message;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 656
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 658
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->id:I

    if-gez v4, :cond_0

    .line 657
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 662
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->randomId:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 674
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :catch_0
    move-exception v3

    .line 675
    .local v3, "x":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error writing messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 679
    .end local v3    # "x":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 664
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    :cond_1
    :try_start_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->randomId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 677
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 667
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/cache/Cache;->clearSendingMessage(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 670
    const/4 v2, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 671
    new-instance v5, Lcom/vkcoffee/android/cache/AddMessageAction;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/Message;

    invoke-direct {v5, v4}, Lcom/vkcoffee/android/cache/AddMessageAction;-><init>(Lcom/vkcoffee/android/Message;)V

    invoke-virtual {v5, v1}, Lcom/vkcoffee/android/cache/AddMessageAction;->apply(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 670
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 673
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 677
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2
.end method

.method public static applyMessagesActions(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/cache/MessagesAction;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 944
    .local p0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/MessagesAction;>;"
    const/4 v2, 0x0

    .line 945
    .local v2, "result":I
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 946
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 948
    .local v4, "t":J
    :try_start_0
    sget-object v8, Lcom/vkcoffee/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v8}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 949
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 950
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/cache/MessagesAction;

    .line 951
    .local v0, "act":Lcom/vkcoffee/android/cache/MessagesAction;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 952
    .local v6, "t1":J
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/cache/MessagesAction;->apply(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 958
    .end local v0    # "act":Lcom/vkcoffee/android/cache/MessagesAction;
    .end local v6    # "t1":J
    :catch_0
    move-exception v3

    .line 959
    .local v3, "x":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "vk"

    const-string/jumbo v9, "Error writing messages cache DB!"

    invoke-static {v8, v9, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 961
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 966
    .end local v3    # "x":Ljava/lang/Exception;
    :goto_1
    sget-object v8, Lcom/vkcoffee/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v8}, Ljava/util/concurrent/Semaphore;->release()V

    .line 967
    return v2

    .line 957
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 961
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method

.method public static clear()V
    .locals 0

    .prologue
    .line 105
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->clear()V

    .line 106
    return-void
.end method

.method public static clearSendingMessage(Ljava/lang/String;)V
    .locals 11
    .param p0, "randomIds"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 778
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "mid"

    aput-object v3, v2, v9

    const-string/jumbo v3, "mid<0 AND random_id IN  (?)"

    new-array v4, v10, [Ljava/lang/String;

    .line 779
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    .line 778
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 780
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.MESSAGE_DELETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "msg_id"

    .line 783
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    .line 782
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 784
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    const-string/jumbo v2, "mid<0 AND random_id IN (?)"

    new-array v3, v10, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 787
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 788
    return-void
.end method

.method public static containsMessage(I)Z
    .locals 13
    .param p0, "mid"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 805
    const/4 v9, 0x0

    .line 806
    .local v9, "result":Z
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 808
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "mid"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 809
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    move v9, v11

    .line 810
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1
    return v9

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    move v9, v12

    .line 809
    goto :goto_0

    .line 811
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 812
    .local v10, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error writing messages cache DB!"

    invoke-static {v1, v2, v10}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static deleteAllMessages()V
    .locals 5

    .prologue
    .line 1092
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1094
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v2, "messages"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1095
    const-string/jumbo v2, "chats"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1096
    const-string/jumbo v2, "chats_users"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :goto_0
    return-void

    .line 1098
    :catch_0
    move-exception v1

    .line 1099
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error reading messages cache DB!"

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static deleteApiRequest(I)V
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 1210
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1212
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v2, "api_queue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :goto_0
    return-void

    .line 1213
    :catch_0
    move-exception v1

    .line 1214
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error writing api queue DB!"

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static deleteDialog(I)V
    .locals 5
    .param p0, "peer"    # I

    .prologue
    .line 818
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 820
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v2, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 821
    const-string/jumbo v2, "messages_top_ids"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :goto_0
    return-void

    .line 822
    :catch_0
    move-exception v1

    .line 823
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error writing messages cache DB!"

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static deleteMessages(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1083
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1085
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v2, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mid in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-static {v4, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v1

    .line 1087
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error reading messages cache DB!"

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAllBirthdays()Landroid/util/SparseArray;
    .locals 11
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 147
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 149
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v8, "SELECT * FROM birthdays JOIN users ON users.uid=birthdays.uid ORDER BY bmonth,bday"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 151
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 153
    .local v4, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_3

    .line 154
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v5, "values":Landroid/content/ContentValues;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_3

    .line 156
    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 157
    new-instance v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;

    invoke-direct {v3}, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;-><init>()V

    .line 158
    .local v3, "profile":Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
    const-string/jumbo v8, "uid"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->uid:I

    .line 159
    const-string/jumbo v8, "firstname"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->firstName:Ljava/lang/String;

    .line 160
    const-string/jumbo v8, "domain"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->domain:Ljava/lang/String;

    .line 161
    const-string/jumbo v8, "lastname"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->lastName:Ljava/lang/String;

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->firstName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->lastName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->fullName:Ljava/lang/String;

    .line 163
    const-string/jumbo v8, "photo_small"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->photo:Ljava/lang/String;

    .line 164
    const-string/jumbo v8, "bday"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    .line 165
    const-string/jumbo v8, "bmonth"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    .line 166
    const-string/jumbo v8, "byear"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "byear"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_1
    iput v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    if-lez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "byear"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bdate:Ljava/lang/String;

    .line 168
    const-string/jumbo v8, "name_r"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->university:Ljava/lang/String;

    .line 170
    iget v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 171
    .local v2, "entry":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;"
    if-nez v2, :cond_0

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "entry":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .restart local v2    # "entry":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;"
    iget v8, v3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    invoke-virtual {v4, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 182
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "entry":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;"
    .end local v3    # "profile":Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
    .end local v4    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;>;"
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    .line 183
    .local v6, "x":Ljava/lang/Exception;
    const-string/jumbo v8, "vk"

    const-string/jumbo v9, "Error reading friends cache DB!"

    invoke-static {v8, v9, v6}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v7

    .line 184
    .end local v6    # "x":Ljava/lang/Exception;
    :goto_3
    return-object v4

    .line 166
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "profile":Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
    .restart local v4    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;>;"
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_1
    const/4 v8, -0x1

    goto :goto_1

    .line 167
    :cond_2
    :try_start_1
    const-string/jumbo v8, ""

    goto :goto_2

    .line 178
    .end local v3    # "profile":Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .end local v4    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;>;"
    :cond_4
    move-object v4, v7

    .line 181
    goto :goto_3
.end method

.method public static getApiRequest()Lcom/vkcoffee/android/data/PersistentAPIRequest;
    .locals 16

    .prologue
    .line 1219
    const/4 v12, 0x0

    .line 1220
    .local v12, "res":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1222
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1223
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "api_queue"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1224
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1225
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1226
    invoke-static {v10, v14}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1227
    new-instance v13, Lcom/vkcoffee/android/data/PersistentAPIRequest;

    invoke-direct {v13}, Lcom/vkcoffee/android/data/PersistentAPIRequest;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1228
    .end local v12    # "res":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    .local v13, "res":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    :try_start_1
    const-string/jumbo v1, "id"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v13, Lcom/vkcoffee/android/data/PersistentAPIRequest;->id:I

    .line 1229
    const-string/jumbo v1, "args"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "args"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v1, v13, Lcom/vkcoffee/android/data/PersistentAPIRequest;->args:Lorg/json/JSONObject;

    .line 1230
    const-string/jumbo v1, "user_data"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "user_data"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v1, v13, Lcom/vkcoffee/android/data/PersistentAPIRequest;->userdata:Lorg/json/JSONObject;

    .line 1231
    const-string/jumbo v1, "success_callback"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1233
    :try_start_2
    const-string/jumbo v1, "success_callback"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1234
    .local v11, "m":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 1235
    .local v9, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    aget-object v1, v11, v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/json/JSONObject;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-virtual {v9, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v13, Lcom/vkcoffee/android/data/PersistentAPIRequest;->callback:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1240
    .end local v9    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "m":[Ljava/lang/String;
    :cond_0
    :goto_2
    :try_start_3
    const-string/jumbo v1, "method"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/vkcoffee/android/data/PersistentAPIRequest;->method:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v12, v13

    .line 1242
    .end local v13    # "res":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    .restart local v12    # "res":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    :cond_1
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1246
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "values":Landroid/content/ContentValues;
    :goto_3
    return-object v12

    .line 1229
    .end local v12    # "res":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "res":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1230
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1236
    :catch_0
    move-exception v15

    .line 1237
    .local v15, "x":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v1, "vk"

    invoke-static {v1, v15}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1243
    .end local v15    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v15

    move-object v12, v13

    .line 1244
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "res":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    .end local v14    # "values":Landroid/content/ContentValues;
    .restart local v12    # "res":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    .restart local v15    # "x":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error reading api queue DB!"

    invoke-static {v1, v2, v15}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1243
    .end local v15    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v15

    goto :goto_4
.end method

.method public static getBirthdays(J)Ljava/util/ArrayList;
    .locals 18
    .param p0, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 113
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :try_start_0
    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 116
    .local v3, "d":Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    const-wide/32 v12, 0x5265c00

    add-long v12, v12, p0

    invoke-direct {v4, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 118
    .local v4, "d2":Ljava/util/Date;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SELECT * FROM birthdays JOIN users ON users.uid=birthdays.uid WHERE "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "(bday=%d AND bmonth=%d) OR (bday=%d AND bmonth=%d)"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ORDER BY bmonth,bday"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 119
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_1

    .line 120
    const/4 v6, 0x0

    .line 121
    .local v6, "i":I
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v9, "values":Landroid/content/ContentValues;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    :cond_0
    invoke-static {v2, v9}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 125
    new-instance v7, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v7}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 126
    .local v7, "profile":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v11, "uid"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 127
    const-string/jumbo v11, "firstname"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 128
    const-string/jumbo v11, "domain"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    .line 129
    const-string/jumbo v11, "lastname"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 131
    const-string/jumbo v11, "photo_small"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 132
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bday"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "bmonth"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v11, "byear"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "byear"

    invoke-virtual {v9, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_0
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    .line 133
    const-string/jumbo v11, "name_r"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 134
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v6, v6, 0x1

    .line 136
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 138
    .end local v6    # "i":I
    .end local v7    # "profile":Lcom/vkcoffee/android/UserProfile;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 142
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "d":Ljava/util/Date;
    .end local v4    # "d2":Ljava/util/Date;
    :goto_1
    return-object v8

    .line 132
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "d":Ljava/util/Date;
    .restart local v4    # "d2":Ljava/util/Date;
    .restart local v6    # "i":I
    .restart local v7    # "profile":Lcom/vkcoffee/android/UserProfile;
    .restart local v9    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string/jumbo v11, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "d":Ljava/util/Date;
    .end local v4    # "d2":Ljava/util/Date;
    .end local v6    # "i":I
    .end local v7    # "profile":Lcom/vkcoffee/android/UserProfile;
    .end local v9    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 140
    .local v10, "x":Ljava/lang/Exception;
    const-string/jumbo v11, "vk"

    const-string/jumbo v12, "Error reading friends cache DB!"

    invoke-static {v11, v12, v10}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getChatAdmin(I)I
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 1000
    const/4 v2, 0x0

    .line 1001
    .local v2, "result":I
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1003
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SELECT admin FROM chats WHERE cid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1004
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1005
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1006
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v2

    .line 1007
    :catch_0
    move-exception v3

    .line 1008
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error reading messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getChatInfo(I)[Ljava/lang/String;
    .locals 8
    .param p0, "id"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 985
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "?"

    aput-object v4, v2, v5

    aput-object v7, v2, v6

    .line 986
    .local v2, "result":[Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 988
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SELECT title, photo FROM chats WHERE cid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 989
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 990
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 991
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 992
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v2

    .line 993
    :catch_0
    move-exception v3

    .line 994
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error reading messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getChatUsers(I)Ljava/util/ArrayList;
    .locals 19
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ChatUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v15, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ChatUser;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1016
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v11, "needGet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    const-string/jumbo v2, "chats_users"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1020
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1021
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1022
    .local v17, "values":Landroid/content/ContentValues;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1024
    :cond_0
    move-object/from16 v0, v17

    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1025
    new-instance v9, Lcom/vkcoffee/android/ChatUser;

    invoke-direct {v9}, Lcom/vkcoffee/android/ChatUser;-><init>()V

    .line 1026
    .local v9, "cu":Lcom/vkcoffee/android/ChatUser;
    new-instance v2, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v2}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    iput-object v2, v9, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    .line 1027
    new-instance v2, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v2}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    iput-object v2, v9, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    .line 1028
    iget-object v2, v9, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    const-string/jumbo v3, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 1029
    iget-object v2, v9, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    const-string/jumbo v3, "inviter"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 1030
    iget-object v2, v9, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1031
    iget-object v2, v9, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    :cond_1
    iget-object v2, v9, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1034
    iget-object v2, v9, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_2
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1039
    .end local v9    # "cu":Lcom/vkcoffee/android/ChatUser;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v17    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-static {v11}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1044
    .local v13, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 1045
    .local v14, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkcoffee/android/UserProfile;

    .line 1046
    .local v12, "p":Lcom/vkcoffee/android/UserProfile;
    iget v3, v12, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v14, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 1040
    .end local v12    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v13    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v14    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v18

    .line 1041
    .local v18, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error reading messages cache DB!"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1048
    .end local v18    # "x":Ljava/lang/Exception;
    .restart local v13    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v14    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkcoffee/android/ChatUser;

    .line 1049
    .local v16, "user":Lcom/vkcoffee/android/ChatUser;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    .line 1050
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    goto :goto_2

    .line 1052
    .end local v16    # "user":Lcom/vkcoffee/android/ChatUser;
    :cond_5
    return-object v15
.end method

.method public static getDialogs(II)Ljava/util/ArrayList;
    .locals 18
    .param p0, "offset"    # I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/DialogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v13, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 701
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v2, "dialogs"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "msg_time desc"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 702
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 703
    .local v15, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 705
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 707
    :cond_0
    invoke-static {v10, v15}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 709
    new-instance v12, Lcom/vkcoffee/android/Message;

    invoke-direct {v12, v15}, Lcom/vkcoffee/android/Message;-><init>(Landroid/content/ContentValues;)V

    .line 712
    .local v12, "msg":Lcom/vkcoffee/android/Message;
    new-instance v14, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v14}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 713
    .local v14, "user":Lcom/vkcoffee/android/UserProfile;
    iget v2, v12, Lcom/vkcoffee/android/Message;->peer:I

    iput v2, v14, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 714
    iget v2, v12, Lcom/vkcoffee/android/Message;->peer:I

    const v3, 0x77359400

    if-ge v2, v3, :cond_3

    .line 715
    const-string/jumbo v2, "firstname"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 716
    const-string/jumbo v2, "lastname"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v14, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 718
    const-string/jumbo v2, "photo_small"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 719
    iget v2, v14, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Lcom/vkcoffee/android/data/Friends;->getOnlineStatus(I)I

    move-result v2

    iput v2, v14, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 728
    :goto_0
    new-instance v11, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v11}, Lcom/vkcoffee/android/DialogEntry;-><init>()V

    .line 729
    .local v11, "e":Lcom/vkcoffee/android/DialogEntry;
    iput-object v12, v11, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 730
    iput-object v14, v11, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 731
    const-string/jumbo v2, "unread_count"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 732
    const-string/jumbo v2, "unread_count"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 735
    :cond_1
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 738
    .end local v11    # "e":Lcom/vkcoffee/android/DialogEntry;
    .end local v12    # "msg":Lcom/vkcoffee/android/Message;
    .end local v14    # "user":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 742
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v15    # "values":Landroid/content/ContentValues;
    :goto_1
    return-object v13

    .line 721
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "msg":Lcom/vkcoffee/android/Message;
    .restart local v14    # "user":Lcom/vkcoffee/android/UserProfile;
    .restart local v15    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string/jumbo v2, "title"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 722
    const-string/jumbo v2, "admin"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 723
    const-string/jumbo v2, "admin"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v14, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 725
    :cond_4
    const-string/jumbo v2, "photo"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 739
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "msg":Lcom/vkcoffee/android/Message;
    .end local v14    # "user":Lcom/vkcoffee/android/UserProfile;
    .end local v15    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v16

    .line 740
    .local v16, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error reading messages cache DB!"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getDialogsCount()I
    .locals 6

    .prologue
    .line 746
    const/4 v2, 0x0

    .line 747
    .local v2, "result":I
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 749
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v4, "SELECT count(*) FROM dialogs"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 750
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 751
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 752
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v2

    .line 753
    :catch_0
    move-exception v3

    .line 754
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error reading messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getFriendLists()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/Friends$Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 543
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/Friends$Folder;>;"
    :try_start_0
    const-string/jumbo v1, "friendlists"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 546
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 547
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 548
    .local v11, "values":Landroid/content/ContentValues;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 550
    :cond_0
    invoke-static {v8, v11}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 551
    new-instance v9, Lcom/vkcoffee/android/data/Friends$Folder;

    invoke-direct {v9}, Lcom/vkcoffee/android/data/Friends$Folder;-><init>()V

    .line 552
    .local v9, "list":Lcom/vkcoffee/android/data/Friends$Folder;
    const-string/jumbo v1, "lid"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkcoffee/android/data/Friends$Folder;->id:I

    .line 553
    const-string/jumbo v1, "name"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkcoffee/android/data/Friends$Folder;->name:Ljava/lang/String;

    .line 554
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    .end local v9    # "list":Lcom/vkcoffee/android/data/Friends$Folder;
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v10

    .line 558
    :catch_0
    move-exception v12

    .line 559
    .local v12, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error reading friends cache DB!"

    invoke-static {v1, v2, v12}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getFriends()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 375
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 376
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :try_start_0
    const-string/jumbo v7, "SELECT users.* FROM users LEFT JOIN friends_hints_order ON users.uid=friends_hints_order.uid WHERE is_friend=1 ORDER BY friends_hints_order.list_order ASC"

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 380
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, "i":I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 383
    .local v5, "values":Landroid/content/ContentValues;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 385
    :cond_0
    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 386
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 387
    .local v3, "profile":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v7, "uid"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 388
    const-string/jumbo v7, "firstname"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 389
    const-string/jumbo v7, "lastname"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 390
    const-string/jumbo v7, "domain"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v3, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 392
    const-string/jumbo v7, "photo_small"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 393
    const-string/jumbo v7, "f"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_2

    move v7, v8

    :goto_0
    iput-boolean v7, v3, Lcom/vkcoffee/android/UserProfile;->f:Z

    .line 394
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    .line 395
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v2, v2, 0x1

    .line 397
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 399
    .end local v2    # "i":I
    .end local v3    # "profile":Lcom/vkcoffee/android/UserProfile;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v4

    .line 393
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "i":I
    .restart local v3    # "profile":Lcom/vkcoffee/android/UserProfile;
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 400
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "i":I
    .end local v3    # "profile":Lcom/vkcoffee/android/UserProfile;
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    .line 401
    .local v6, "x":Ljava/lang/Exception;
    const-string/jumbo v7, "vk"

    const-string/jumbo v8, "Error reading friends cache DB!"

    invoke-static {v7, v8, v6}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getImportedContacts(I)Ljava/util/ArrayList;
    .locals 14
    .param p0, "service"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 450
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :try_start_0
    const-string/jumbo v1, "imported_contacts"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 453
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 454
    const/4 v9, 0x0

    .line 455
    .local v9, "i":I
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v12, "values":Landroid/content/ContentValues;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 458
    :cond_0
    invoke-static {v8, v12}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 459
    new-instance v10, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v10}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 460
    .local v10, "profile":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v1, "vk_id"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v10, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 461
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v10, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 462
    iget-object v1, v10, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v2, "external_id"

    const-string/jumbo v3, "external_id"

    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string/jumbo v1, "external_name"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 464
    const-string/jumbo v1, "external_photo"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 465
    const-string/jumbo v1, "description"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 466
    const-string/jumbo v1, "req_sent"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v10, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    .line 467
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v9, v9, 0x1

    .line 469
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    .end local v9    # "i":I
    .end local v10    # "profile":Lcom/vkcoffee/android/UserProfile;
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v11

    .line 472
    :catch_0
    move-exception v13

    .line 473
    .local v13, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error reading friends cache DB!"

    invoke-static {v1, v2, v13}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getMaxMsgId()I
    .locals 6

    .prologue
    .line 930
    const/4 v2, 0x0

    .line 931
    .local v2, "result":I
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 933
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v4, "SELECT max(mid) FROM messages"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 934
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 935
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 936
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v2

    .line 937
    :catch_0
    move-exception v3

    .line 938
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error reading messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getMessageByID(I)Lcom/vkcoffee/android/Message;
    .locals 13
    .param p0, "mid"    # I

    .prologue
    const v12, 0x77359400

    .line 907
    const/4 v9, 0x0

    .line 908
    .local v9, "result":Lcom/vkcoffee/android/Message;
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 910
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v1, "messages"

    sget-object v2, Lcom/vkcoffee/android/Message;->SELECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 911
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    new-instance v10, Lcom/vkcoffee/android/Message;

    invoke-direct {v10, v8}, Lcom/vkcoffee/android/Message;-><init>(Landroid/database/Cursor;)V

    .end local v9    # "result":Lcom/vkcoffee/android/Message;
    .local v10, "result":Lcom/vkcoffee/android/Message;
    move-object v9, v10

    .line 914
    .end local v10    # "result":Lcom/vkcoffee/android/Message;
    .restart local v9    # "result":Lcom/vkcoffee/android/Message;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 915
    if-eqz v9, :cond_2

    iget v1, v9, Lcom/vkcoffee/android/Message;->peer:I

    if-le v1, v12, :cond_2

    .line 916
    const-string/jumbo v1, "chats"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "title"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lcom/vkcoffee/android/Message;->peer:I

    sub-int/2addr v4, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 917
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 918
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 919
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkcoffee/android/Message;->title:Ljava/lang/String;

    .line 921
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v9

    .line 923
    :catch_0
    move-exception v11

    .line 924
    .local v11, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error writing users cache DB!"

    invoke-static {v1, v2, v11}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getMessagesHistory(III)Ljava/util/ArrayList;
    .locals 13
    .param p0, "peer"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1104
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1109
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v1, "messages"

    sget-object v2, Lcom/vkcoffee/android/Message;->SELECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND mid<0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "time desc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1110
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1112
    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lcom/vkcoffee/android/Message;

    invoke-direct {v2, v9}, Lcom/vkcoffee/android/Message;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v10, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1113
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1115
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1117
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1118
    const-string/jumbo v1, "messages"

    sget-object v2, Lcom/vkcoffee/android/Message;->SELECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND mid>0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "mid desc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1119
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1121
    :cond_2
    const/4 v1, 0x0

    new-instance v2, Lcom/vkcoffee/android/Message;

    invoke-direct {v2, v9}, Lcom/vkcoffee/android/Message;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v10, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1122
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1124
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v10

    .line 1125
    :catch_0
    move-exception v11

    .line 1126
    .local v11, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error reading messages cache DB!"

    invoke-static {v1, v2, v11}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getMessagesHistoryCount(I)I
    .locals 6
    .param p0, "peer"    # I

    .prologue
    .line 971
    const/4 v2, 0x0

    .line 972
    .local v2, "result":I
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 974
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SELECT count(*) FROM messages WHERE peer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 975
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 976
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 977
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v2

    .line 978
    :catch_0
    move-exception v3

    .line 979
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error reading messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getNumUnreadMessages(I)I
    .locals 11
    .param p0, "peer"    # I

    .prologue
    .line 638
    const/4 v9, -0x1

    .line 639
    .local v9, "result":I
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 641
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v1, "messages_unread_counters"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "unread_count"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 642
    .local v8, "crsr":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 645
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v8    # "crsr":Landroid/database/Cursor;
    :goto_0
    return v9

    .line 646
    :catch_0
    move-exception v10

    .line 647
    .local v10, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error writing messages cache DB!"

    invoke-static {v1, v2, v10}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->getInstance(Landroid/content/Context;)Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static getResendableMessages()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1132
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1133
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1135
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v1, "messages"

    sget-object v2, Lcom/vkcoffee/android/Message;->SELECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mid<0 AND time>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v4

    add-int/lit16 v4, v4, -0x12c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "time desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1136
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lcom/vkcoffee/android/Message;

    invoke-direct {v2, v8}, Lcom/vkcoffee/android/Message;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v9, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1139
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1141
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v9

    .line 1142
    :catch_0
    move-exception v10

    .line 1143
    .local v10, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error reading messages cache DB!"

    invoke-static {v1, v2, v10}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getTodayBirthdays()Ljava/util/List;
    .locals 17
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 267
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 268
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 272
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 273
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 274
    .local v7, "startDay":I
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 276
    .local v8, "startMonth":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SELECT * FROM birthdays JOIN users ON users.uid=birthdays.uid WHERE "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "(bday=%d AND bmonth=%d)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    add-int/lit8 v16, v8, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ORDER BY bmonth,bday"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 278
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_4

    .line 279
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_3

    .line 282
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 283
    .local v9, "values":Landroid/content/ContentValues;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_3

    .line 284
    invoke-static {v2, v9}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 285
    new-instance v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;

    invoke-direct {v4}, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;-><init>()V

    .line 286
    .local v4, "profile":Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
    const-string/jumbo v11, "uid"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->uid:I

    .line 287
    const-string/jumbo v11, "firstname"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->firstName:Ljava/lang/String;

    .line 288
    const-string/jumbo v11, "lastname"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->lastName:Ljava/lang/String;

    .line 289
    const-string/jumbo v11, "domain"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->domain:Ljava/lang/String;

    .line 290
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->firstName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->lastName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->fullName:Ljava/lang/String;

    .line 291
    const-string/jumbo v11, "photo_small"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->photo:Ljava/lang/String;

    .line 292
    const-string/jumbo v11, "bday"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    .line 293
    const-string/jumbo v11, "bmonth"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    .line 294
    const-string/jumbo v11, "byear"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, "byear"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_1
    iput v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    .line 295
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    if-lez v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "byear"

    invoke-virtual {v9, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bdate:Ljava/lang/String;

    .line 296
    const-string/jumbo v11, "name_r"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->university:Ljava/lang/String;

    .line 297
    const/4 v11, 0x1

    iput-boolean v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->isToday:Z

    .line 299
    iget v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    if-lez v11, :cond_2

    .line 300
    iget v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    iget v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    iget v13, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    invoke-static {v11, v12, v13}, Lcom/vkcoffee/android/TimeUtils;->getAge(III)I

    move-result v10

    .line 301
    .local v10, "years":I
    const v11, 0x7f0e0006

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v5, v11, v10, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->subtitle:Ljava/lang/String;

    .line 305
    .end local v10    # "years":I
    :goto_3
    iget-object v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->subtitle:Ljava/lang/String;

    iput-object v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->date:Ljava/lang/String;

    .line 306
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 294
    :cond_0
    const/4 v11, -0x1

    goto :goto_1

    .line 295
    :cond_1
    const-string/jumbo v11, ""

    goto :goto_2

    .line 303
    :cond_2
    const v11, 0x7f080545

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->subtitle:Ljava/lang/String;

    goto :goto_3

    .line 309
    .end local v4    # "profile":Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 312
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;"
    :goto_4
    return-object v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_4
.end method

.method public static getTomorrowBirthdays()Ljava/util/List;
    .locals 18
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 320
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 321
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 325
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 326
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v12, 0x5

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 327
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 328
    .local v7, "startDay":I
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 330
    .local v8, "startMonth":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SELECT * FROM birthdays JOIN users ON users.uid=birthdays.uid WHERE "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "(bday=%d AND bmonth=%d)"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v17, v8, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ORDER BY bmonth,bday"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 332
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_4

    .line 333
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_3

    .line 336
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .local v9, "values":Landroid/content/ContentValues;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_3

    .line 338
    invoke-static {v2, v9}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 339
    new-instance v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;

    invoke-direct {v4}, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;-><init>()V

    .line 340
    .local v4, "profile":Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
    const-string/jumbo v12, "uid"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->uid:I

    .line 341
    const-string/jumbo v12, "firstname"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->firstName:Ljava/lang/String;

    .line 342
    const-string/jumbo v12, "lastname"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->lastName:Ljava/lang/String;

    .line 343
    const-string/jumbo v12, "domain"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->domain:Ljava/lang/String;

    .line 344
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->firstName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->lastName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->fullName:Ljava/lang/String;

    .line 345
    const-string/jumbo v12, "photo_small"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->photo:Ljava/lang/String;

    .line 346
    const-string/jumbo v12, "bday"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    .line 347
    const-string/jumbo v12, "bmonth"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    .line 348
    const-string/jumbo v12, "byear"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "byear"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_1
    iput v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    .line 349
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    if-lez v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "."

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "byear"

    invoke-virtual {v9, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bdate:Ljava/lang/String;

    .line 350
    const-string/jumbo v12, "name_r"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->university:Ljava/lang/String;

    .line 352
    iget v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    if-lez v12, :cond_2

    .line 353
    iget v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    iget v13, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    iget v14, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    invoke-static {v12, v13, v14}, Lcom/vkcoffee/android/TimeUtils;->getAge(III)I

    move-result v12

    add-int/lit8 v10, v12, 0x1

    .line 354
    .local v10, "years":I
    const v12, 0x7f0e0005

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v5, v12, v10, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 355
    .local v11, "yearsString":Ljava/lang/CharSequence;
    const v12, 0x7f080548

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->date:Ljava/lang/String;

    .line 356
    const v12, 0x7f0800a5

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v1, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->upcoming:Ljava/lang/String;

    .line 357
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->date:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0800a3

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->upcoming:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->subtitle:Ljava/lang/String;

    .line 363
    .end local v10    # "years":I
    .end local v11    # "yearsString":Ljava/lang/CharSequence;
    :goto_3
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 348
    :cond_0
    const/4 v12, -0x1

    goto/16 :goto_1

    .line 349
    :cond_1
    const-string/jumbo v12, ""

    goto :goto_2

    .line 359
    :cond_2
    const v12, 0x7f080548

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->date:Ljava/lang/String;

    .line 360
    iget-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->date:Ljava/lang/String;

    iput-object v12, v4, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->subtitle:Ljava/lang/String;

    goto :goto_3

    .line 366
    .end local v4    # "profile":Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 369
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;"
    :goto_4
    return-object v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_4
.end method

.method public static getUnread(I)Ljava/util/ArrayList;
    .locals 13
    .param p0, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 894
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v1, "messages"

    sget-object v2, Lcom/vkcoffee/android/Message;->SELECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(flags & 1) = 1 AND sender<>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "time desc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v12, ""

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 895
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 897
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/Message;

    invoke-direct {v1, v9}, Lcom/vkcoffee/android/Message;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 903
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v10

    .line 900
    :catch_0
    move-exception v11

    .line 901
    .local v11, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error writing users cache DB!"

    invoke-static {v1, v2, v11}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getUpcomingBirthdays()Ljava/util/List;
    .locals 23
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 191
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 192
    .local v10, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 193
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    const v17, 0x7f0d0019

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "months":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 199
    .local v2, "calendar":Ljava/util/Calendar;
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 200
    .local v12, "startDay":I
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 201
    .local v13, "startMonth":I
    const/16 v17, 0x2

    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 203
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 204
    .local v6, "endDay":I
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 206
    .local v7, "endMonth":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "SELECT * FROM birthdays JOIN users ON users.uid=birthdays.uid WHERE "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v19, "(bday>%d AND bmonth=%d) OR (bday<%d AND bmonth=%d)"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v12, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    add-int/lit8 v22, v13, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    add-int/lit8 v22, v6, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    add-int/lit8 v22, v7, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " ORDER BY bmonth,bday"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 208
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_4

    .line 209
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;"
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-lez v17, :cond_3

    .line 212
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v14, "values":Landroid/content/ContentValues;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v17

    if-nez v17, :cond_3

    .line 214
    invoke-static {v4, v14}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 215
    new-instance v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;

    invoke-direct {v9}, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;-><init>()V

    .line 216
    .local v9, "profile":Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
    const-string/jumbo v17, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->uid:I

    .line 217
    const-string/jumbo v17, "firstname"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->firstName:Ljava/lang/String;

    .line 218
    const-string/jumbo v17, "lastname"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->lastName:Ljava/lang/String;

    .line 219
    const-string/jumbo v17, "domain"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->domain:Ljava/lang/String;

    .line 220
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->firstName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->lastName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->fullName:Ljava/lang/String;

    .line 221
    const-string/jumbo v17, "photo_small"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->photo:Ljava/lang/String;

    .line 222
    const-string/jumbo v17, "bday"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    .line 223
    const-string/jumbo v17, "bmonth"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    .line 224
    const-string/jumbo v17, "byear"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_1

    const-string/jumbo v17, "byear"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :goto_1
    move/from16 v0, v17

    iput v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    .line 225
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    move/from16 v17, v0

    if-lez v17, :cond_2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, "byear"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bdate:Ljava/lang/String;

    .line 226
    const-string/jumbo v17, "name_r"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->university:Ljava/lang/String;

    .line 227
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v8, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->date:Ljava/lang/String;

    .line 228
    iget-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->date:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->subtitle:Ljava/lang/String;

    .line 229
    iget v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    move/from16 v17, v0

    if-lez v17, :cond_0

    .line 231
    iget v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    move/from16 v17, v0

    iget v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    move/from16 v18, v0

    iget v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/vkcoffee/android/TimeUtils;->getAge(III)I

    move-result v17

    add-int/lit8 v15, v17, 0x1

    .line 232
    .local v15, "years":I
    const v17, 0x7f0e0005

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v15, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 233
    .local v16, "yearsString":Ljava/lang/CharSequence;
    const v17, 0x7f0800a5

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->upcoming:Ljava/lang/String;

    .line 234
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->subtitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0800a3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->upcoming:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->subtitle:Ljava/lang/String;

    .line 236
    .end local v15    # "years":I
    .end local v16    # "yearsString":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 224
    :cond_1
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 225
    :cond_2
    const-string/jumbo v17, ""

    goto/16 :goto_2

    .line 239
    .end local v9    # "profile":Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 241
    invoke-static {v13, v7}, Lcom/vkcoffee/android/cache/Cache$$Lambda$1;->lambdaFactory$(II)Ljava/util/Comparator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 259
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;>;"
    :goto_3
    return-object v11

    :cond_4
    const/4 v11, 0x0

    goto :goto_3
.end method

.method public static getUsers(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "forceOld"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vkcoffee/android/cache/Cache;->getUsers(Ljava/util/List;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUsers(Ljava/util/List;ZI)Ljava/util/ArrayList;
    .locals 16
    .param p1, "forceOld"    # Z
    .param p2, "nameCase"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 412
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v13, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    if-nez p2, :cond_4

    .line 416
    :try_start_0
    const-string/jumbo v3, "users"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    move-object/from16 v0, p0

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 420
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 421
    const/4 v11, 0x0

    .line 422
    .local v11, "i":I
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 423
    .local v14, "values":Landroid/content/ContentValues;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 425
    :cond_0
    invoke-static {v10, v14}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 426
    new-instance v12, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v12}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 427
    .local v12, "profile":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v3, "uid"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v12, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 428
    const-string/jumbo v3, "firstname"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 429
    const-string/jumbo v3, "lastname"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 430
    const-string/jumbo v3, "domain"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v12, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 432
    const-string/jumbo v3, "photo_small"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 433
    const-string/jumbo v3, "f"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v12, Lcom/vkcoffee/android/UserProfile;->f:Z

    .line 434
    const-string/jumbo v3, "is_friend"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v12, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    .line 435
    if-nez p1, :cond_1

    const-string/jumbo v3, "last_updated"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/32 v8, 0x15180

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 436
    :cond_1
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 439
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 441
    .end local v11    # "i":I
    .end local v12    # "profile":Lcom/vkcoffee/android/UserProfile;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 445
    .end local v10    # "cursor":Landroid/database/Cursor;
    :goto_3
    return-object v13

    .line 418
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELECT users.uid, users_name_cases.firstname, users_name_cases.lastname, users.photo_small, users.f, users.domain, users.is_friend, users.last_updated FROM users_name_cases JOIN users ON users_name_cases.uid=users.uid WHERE users_name_cases.uid IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") and name_case="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .restart local v10    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 433
    .restart local v11    # "i":I
    .restart local v12    # "profile":Lcom/vkcoffee/android/UserProfile;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 434
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 442
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "i":I
    .end local v12    # "profile":Lcom/vkcoffee/android/UserProfile;
    .end local v14    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 443
    .local v15, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "Error reading friends cache DB!"

    invoke-static {v3, v4, v15}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->getInstance(Landroid/content/Context;)Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getUpcomingBirthdays$245(IILcom/vkcoffee/android/cache/Cache$BirthdayEntry;Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;)I
    .locals 4
    .param p2, "lhs"    # Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
    .param p3, "rhs"    # Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 242
    iget v2, p2, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    iget v3, p3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    if-ne v2, v3, :cond_3

    .line 243
    iget v2, p2, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    iget v3, p3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    if-ge v2, v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    iget v0, p2, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    iget v2, p3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 247
    :cond_3
    iget v2, p2, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    add-int/lit8 v3, p0, 0x1

    if-ne v2, v3, :cond_4

    iget v2, p3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    add-int/lit8 v3, p1, 0x1

    if-eq v2, v3, :cond_0

    .line 250
    :cond_4
    iget v2, p3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    add-int/lit8 v3, p0, 0x1

    if-ne v2, v3, :cond_5

    iget v2, p2, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    add-int/lit8 v3, p1, 0x1

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 251
    goto :goto_0

    .line 255
    :cond_5
    iget v2, p2, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    iget v3, p3, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static needUpdateChat(I)Z
    .locals 8
    .param p0, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1056
    const/4 v2, 0x1

    .line 1057
    .local v2, "result":Z
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1059
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SELECT need_update_users FROM chats WHERE cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1060
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1061
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v2, v4

    .line 1063
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_1
    return v2

    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    move v2, v5

    .line 1061
    goto :goto_0

    .line 1064
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v3

    .line 1065
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error reading messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    .locals 8
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "params"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Ljava/lang/reflect/Method;
    .param p3, "userdata"    # Lorg/json/JSONObject;

    .prologue
    .line 1189
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1191
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1192
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "method"

    invoke-virtual {v3, v5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string/jumbo v5, "args"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    if-eqz p2, :cond_0

    .line 1195
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1196
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1197
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, "success_callback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 1200
    const-string/jumbo v5, "user_data"

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :cond_1
    const-string/jumbo v5, "api_queue"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1203
    const-string/jumbo v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Insert api request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") ok"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1204
    :catch_0
    move-exception v4

    .line 1205
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "Error writing api queue DB!"

    invoke-static {v5, v6, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static removeFriend(I)V
    .locals 6
    .param p0, "uid"    # I

    .prologue
    .line 623
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 625
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 626
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "is_friend"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 627
    const-string/jumbo v3, "users"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 628
    :catch_0
    move-exception v2

    .line 629
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "Error writing friends cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static saveImportedContacts(Ljava/util/List;IZ)V
    .locals 9
    .param p1, "service"    # I
    .param p2, "deleteOld"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v6, 0x0

    .line 479
    new-instance v1, Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v5, v6}, Lcom/vkcoffee/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/cache/Cache$1;)V

    .line 480
    .local v1, "helper":Lcom/vkcoffee/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 482
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v5, Lcom/vkcoffee/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 484
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 485
    if-eqz p2, :cond_0

    .line 486
    const-string/jumbo v5, "imported_contacts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "service="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 488
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 489
    .local v3, "values":Landroid/content/ContentValues;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 490
    .local v2, "u":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 491
    const-string/jumbo v6, "vk_id"

    iget v7, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    const-string/jumbo v6, "external_id"

    iget-object v7, v2, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v8, "external_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget v6, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-nez v6, :cond_1

    .line 494
    const-string/jumbo v6, "external_name"

    iget-object v7, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string/jumbo v6, "external_photo"

    iget-object v7, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_1
    const-string/jumbo v6, "service"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string/jumbo v6, "description"

    iget-object v7, v2, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string/jumbo v6, "req_sent"

    iget-boolean v7, v2, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 501
    const-string/jumbo v6, "imported_contacts"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v0, v6, v7, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 504
    .end local v2    # "u":Lcom/vkcoffee/android/UserProfile;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 505
    .local v4, "x":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "Error writing messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 509
    .end local v4    # "x":Ljava/lang/Exception;
    :goto_1
    sget-object v5, Lcom/vkcoffee/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 510
    return-void

    .line 503
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public static setMessageID(III)V
    .locals 6
    .param p0, "mid"    # I
    .param p1, "peerID"    # I
    .param p2, "newID"    # I

    .prologue
    .line 791
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 793
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 794
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "mid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    const-string/jumbo v3, "messages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 796
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 797
    const-string/jumbo v3, "msg_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    const-string/jumbo v3, "messages_top_ids"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "peer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v2

    .line 800
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "Error writing messages cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setMessageReadState(IZ)V
    .locals 5
    .param p0, "mid"    # I
    .param p1, "state"    # Z

    .prologue
    const/4 v2, 0x1

    .line 760
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 762
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {v3, p0, v4, v2}, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;-><init>(III)V

    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;->apply(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :goto_1
    return-void

    .line 762
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 763
    :catch_0
    move-exception v1

    .line 764
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error writing messages cache DB!"

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static setMessageReadStateUpto(IIZZ)V
    .locals 8
    .param p0, "mid"    # I
    .param p1, "peer"    # I
    .param p2, "state"    # Z
    .param p3, "in"    # Z

    .prologue
    const/4 v3, 0x1

    .line 769
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 771
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v0, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    :goto_0
    move v1, p0

    move v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;-><init>(IIIZI)V

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;->apply(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_1
    return-void

    .line 771
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 772
    :catch_0
    move-exception v7

    .line 773
    .local v7, "x":Ljava/lang/Exception;
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "Error writing messages cache DB!"

    invoke-static {v0, v1, v7}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static setNeedUpdateChat(I)V
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 1071
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SET NEED UPDATE CHAT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1074
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1075
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "need_update_users"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    const-string/jumbo v3, "chats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1077
    :catch_0
    move-exception v2

    .line 1078
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "Error writing messages cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .param p0, "id"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ChatUser;>;"
    const/4 v8, 0x0

    .line 1149
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1150
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1153
    .local v3, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 1154
    const-string/jumbo v5, "title"

    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string/jumbo v5, "need_update_users"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1156
    const-string/jumbo v5, "chats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1158
    :cond_0
    if-eqz p3, :cond_1

    .line 1159
    const-string/jumbo v5, "photo"

    invoke-virtual {v3, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string/jumbo v5, "chats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1162
    :cond_1
    if-eqz p2, :cond_4

    .line 1163
    const-string/jumbo v5, "need_update_users"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    const-string/jumbo v5, "chats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1165
    const-string/jumbo v5, "chats_users"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1166
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ChatUser;

    .line 1167
    .local v2, "user":Lcom/vkcoffee/android/ChatUser;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1168
    const-string/jumbo v6, "cid"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1169
    const-string/jumbo v6, "uid"

    iget-object v7, v2, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1170
    const-string/jumbo v6, "inviter"

    iget-object v7, v2, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1171
    const-string/jumbo v6, "invited"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1172
    const-string/jumbo v6, "chats_users"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1173
    iget-object v6, v2, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1174
    iget-object v6, v2, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    :cond_3
    iget-object v6, v2, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1177
    iget-object v6, v2, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1182
    .end local v2    # "user":Lcom/vkcoffee/android/ChatUser;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 1183
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "Error writing messages DB!"

    invoke-static {v5, v6, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1185
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_4
    invoke-static {v1, v8}, Lcom/vkcoffee/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 1186
    return-void
.end method

.method public static updateFriendLists(Ljava/util/List;Z)V
    .locals 8
    .param p1, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/Friends$Folder;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/Friends$Folder;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 516
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v5, Lcom/vkcoffee/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 518
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 519
    if-eqz p1, :cond_0

    .line 520
    const-string/jumbo v5, "friendlists"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 522
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 523
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 524
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/data/Friends$Folder;

    .line 525
    .local v2, "list":Lcom/vkcoffee/android/data/Friends$Folder;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 526
    const-string/jumbo v5, "lid"

    iget v6, v2, Lcom/vkcoffee/android/data/Friends$Folder;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string/jumbo v5, "name"

    iget-object v6, v2, Lcom/vkcoffee/android/data/Friends$Folder;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string/jumbo v5, "friendlists"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    .end local v2    # "list":Lcom/vkcoffee/android/data/Friends$Folder;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 537
    .end local v1    # "i":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_1
    sget-object v5, Lcom/vkcoffee/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 538
    return-void

    .line 532
    :catch_0
    move-exception v4

    .line 533
    .local v4, "x":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "Error writing friends cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v4    # "x":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public static updateFriends(Ljava/util/List;Z)V
    .locals 12
    .param p1, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 565
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 567
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v6, Lcom/vkcoffee/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 568
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 569
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 570
    if-eqz p1, :cond_0

    .line 571
    const-string/jumbo v6, "is_friend"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 572
    const-string/jumbo v6, "users"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 573
    const-string/jumbo v6, "friends_hints_order"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 575
    :cond_0
    const/4 v2, 0x0

    .line 576
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    .line 577
    .local v3, "user":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 578
    const-string/jumbo v6, "uid"

    iget v8, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    const-string/jumbo v6, "firstname"

    iget-object v8, v3, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string/jumbo v6, "lastname"

    iget-object v8, v3, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string/jumbo v6, "photo_small"

    iget-object v8, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string/jumbo v6, "domain"

    iget-object v8, v3, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string/jumbo v6, "is_friend"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 584
    const-string/jumbo v6, "f"

    iget-boolean v8, v3, Lcom/vkcoffee/android/UserProfile;->f:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 585
    const-string/jumbo v6, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    const-string/jumbo v6, "lists"

    iget v8, v3, Lcom/vkcoffee/android/UserProfile;->country:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    const-string/jumbo v6, "users"

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v1, v6, v8, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 589
    iget-object v6, v3, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 590
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 591
    const-string/jumbo v6, "uid"

    iget v8, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    const-string/jumbo v6, "name_r"

    iget-object v8, v3, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v6, v3, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    const-string/jumbo v8, "\\."

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "bd":[Ljava/lang/String;
    array-length v6, v0

    if-le v6, v10, :cond_1

    .line 596
    const-string/jumbo v6, "bday"

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    const-string/jumbo v6, "bmonth"

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    array-length v6, v0

    if-le v6, v11, :cond_3

    .line 599
    const-string/jumbo v6, "byear"

    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    :cond_1
    :goto_1
    const-string/jumbo v6, "birthdays"

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v1, v6, v8, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 606
    .end local v0    # "bd":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 608
    const-string/jumbo v6, "uid"

    iget v8, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const-string/jumbo v8, "list_order"

    if-eqz p1, :cond_4

    move v6, v2

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string/jumbo v6, "friends_hints_order"

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 611
    add-int/lit8 v2, v2, 0x1

    .line 612
    goto/16 :goto_0

    .line 601
    .restart local v0    # "bd":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "byear"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 614
    .end local v0    # "bd":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "user":Lcom/vkcoffee/android/UserProfile;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 615
    .local v5, "x":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "vk"

    const-string/jumbo v7, "Error writing friends cache DB!"

    invoke-static {v6, v7, v5}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 619
    .end local v5    # "x":Ljava/lang/Exception;
    :goto_3
    sget-object v6, Lcom/vkcoffee/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 620
    return-void

    .line 609
    .restart local v2    # "i":I
    .restart local v3    # "user":Lcom/vkcoffee/android/UserProfile;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_4
    const v6, 0x5f5e0ff

    goto :goto_2

    .line 613
    .end local v3    # "user":Lcom/vkcoffee/android/UserProfile;
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 617
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .end local v2    # "i":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method

.method public static updateMessagesUnreadCount(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, "counts":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 685
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 686
    .local v2, "values":Landroid/content/ContentValues;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 687
    .local v1, "dlg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string/jumbo v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update unread for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string/jumbo v6, "peer"

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    const-string/jumbo v6, "unread_count"

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const-string/jumbo v4, "messages_unread_counters"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v4, v6, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    .end local v1    # "dlg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 693
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error writing messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 695
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static updatePeers(Ljava/util/List;Z)V
    .locals 1
    .param p1, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vkcoffee/android/cache/Cache;->updatePeers(Ljava/util/List;ZI)V

    .line 829
    return-void
.end method

.method public static updatePeers(Ljava/util/List;ZI)V
    .locals 12
    .param p1, "replace"    # Z
    .param p2, "nameCase"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 835
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v5, Lcom/vkcoffee/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 836
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 837
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 838
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 839
    .local v2, "user":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 840
    iget v5, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-gez v5, :cond_2

    iget v5, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v7, -0x77359400

    if-le v5, v7, :cond_2

    .line 841
    const-string/jumbo v5, "uid"

    iget v7, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    const-string/jumbo v5, "firstname"

    iget-object v7, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string/jumbo v5, "lastname"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string/jumbo v5, "photo_small"

    iget-object v7, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string/jumbo v5, "is_friend"

    iget-boolean v7, v2, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 846
    const-string/jumbo v5, "f"

    iget-boolean v7, v2, Lcom/vkcoffee/android/UserProfile;->f:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 847
    const-string/jumbo v5, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    const-string/jumbo v7, "users"

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    const/4 v5, 0x5

    :goto_1
    invoke-virtual {v0, v7, v8, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 882
    .end local v2    # "user":Lcom/vkcoffee/android/UserProfile;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 883
    .local v4, "x":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "Error writing users cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 887
    .end local v4    # "x":Ljava/lang/Exception;
    :goto_2
    sget-object v5, Lcom/vkcoffee/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 888
    return-void

    .line 848
    .restart local v2    # "user":Lcom/vkcoffee/android/UserProfile;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    const/4 v5, 0x4

    goto :goto_1

    .line 849
    :cond_2
    :try_start_2
    iget v5, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v7, 0x77359400

    if-ge v5, v7, :cond_6

    .line 850
    const-string/jumbo v5, "uid"

    iget v7, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const-string/jumbo v5, "firstname"

    iget-object v7, v2, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string/jumbo v5, "lastname"

    iget-object v7, v2, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    if-nez p2, :cond_4

    .line 854
    const-string/jumbo v5, "photo_small"

    iget-object v7, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string/jumbo v5, "is_friend"

    iget-boolean v7, v2, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 856
    const-string/jumbo v5, "f"

    iget-boolean v7, v2, Lcom/vkcoffee/android/UserProfile;->f:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 857
    const-string/jumbo v5, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    const-string/jumbo v7, "users"

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    const/4 v5, 0x5

    :goto_3
    invoke-virtual {v0, v7, v8, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 885
    .end local v2    # "user":Lcom/vkcoffee/android/UserProfile;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 858
    .restart local v2    # "user":Lcom/vkcoffee/android/UserProfile;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v5, 0x4

    goto :goto_3

    .line 860
    :cond_4
    if-eqz p1, :cond_5

    .line 861
    :try_start_3
    const-string/jumbo v5, "users_name_cases"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " AND name_case="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 863
    :cond_5
    const-string/jumbo v5, "name_case"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string/jumbo v5, "users_name_cases"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 868
    :cond_6
    const-string/jumbo v5, "cid"

    iget v7, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v8, 0x77359400

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 869
    const-string/jumbo v5, "title"

    iget-object v7, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string/jumbo v5, "admin"

    iget v7, v2, Lcom/vkcoffee/android/UserProfile;->online:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string/jumbo v5, "photo"

    iget-object v7, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string/jumbo v5, "need_update_users"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    const-string/jumbo v5, "chats"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v0, v5, v7, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 874
    iget-object v5, v2, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 875
    iget-object v4, v2, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 876
    .local v4, "x":Landroid/os/Bundle;
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v7, "notify"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 877
    .local v1, "nprefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mute"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dnd"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "dnd"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 881
    .end local v1    # "nprefs":Landroid/content/SharedPreferences;
    .end local v2    # "user":Lcom/vkcoffee/android/UserProfile;
    .end local v4    # "x":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 885
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2
.end method
