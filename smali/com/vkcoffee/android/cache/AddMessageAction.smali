.class public Lcom/vkcoffee/android/cache/AddMessageAction;
.super Lcom/vkcoffee/android/cache/MessagesAction;
.source "AddMessageAction.java"


# instance fields
.field private m:Lcom/vkcoffee/android/Message;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/Message;)V
    .locals 0
    .param p1, "msg"    # Lcom/vkcoffee/android/Message;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vkcoffee/android/cache/MessagesAction;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    .line 28
    return-void
.end method


# virtual methods
.method public apply(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 25
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .local v22, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "mid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    const-string/jumbo v2, "peer"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    const-string/jumbo v2, "random_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->randomId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    const-string/jumbo v2, "sender"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    const-string/jumbo v2, "text"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v3, v3, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v2, "time"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->time:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 41
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    .local v11, "buf":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 43
    new-instance v20, Ljava/io/DataOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    .local v20, "out":Ljava/io/DataOutputStream;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/attachments/Attachment;

    .line 46
    .local v10, "att":Lcom/vkcoffee/android/attachments/Attachment;
    if-eqz v10, :cond_0

    .line 47
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/vkcoffee/android/attachments/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    .line 44
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 50
    .end local v10    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_1
    const-string/jumbo v2, "attachments"

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-boolean v2, v2, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v2, :cond_3

    .line 52
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/attachments/Attachment;

    .line 54
    .restart local v10    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v2, v10, Lcom/vkcoffee/android/attachments/GiftAttachment;

    if-eqz v2, :cond_2

    move-object v15, v10

    .line 55
    check-cast v15, Lcom/vkcoffee/android/attachments/GiftAttachment;

    .line 56
    .local v15, "g":Lcom/vkcoffee/android/attachments/GiftAttachment;
    iget v2, v15, Lcom/vkcoffee/android/attachments/GiftAttachment;->packID:I

    if-eqz v2, :cond_2

    .line 57
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/stickers/Stickers;->reload()V

    .line 52
    .end local v15    # "g":Lcom/vkcoffee/android/attachments/GiftAttachment;
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 65
    .end local v10    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v11    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "i":I
    .end local v20    # "out":Ljava/io/DataOutputStream;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 66
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    .restart local v11    # "buf":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 68
    new-instance v20, Ljava/io/DataOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/Message$FwdMessage;

    .line 71
    .local v14, "fm":Lcom/vkcoffee/android/Message$FwdMessage;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/vkcoffee/android/Message$FwdMessage;->serialize(Ljava/io/DataOutputStream;)V

    .line 69
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 73
    .end local v14    # "fm":Lcom/vkcoffee/android/Message$FwdMessage;
    :cond_4
    const-string/jumbo v2, "fwd"

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 75
    .end local v11    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "i":I
    .end local v20    # "out":Ljava/io/DataOutputStream;
    :cond_5
    const/4 v13, 0x0

    .line 76
    .local v13, "flags":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-boolean v2, v2, Lcom/vkcoffee/android/Message;->readState:Z

    if-nez v2, :cond_6

    .line 77
    or-int/lit8 v13, v13, 0x1

    .line 79
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-boolean v2, v2, Lcom/vkcoffee/android/Message;->sendFailed:Z

    if-eqz v2, :cond_7

    .line 80
    or-int/lit8 v13, v13, 0x2

    .line 82
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-boolean v2, v2, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_8

    .line 83
    or-int/lit8 v13, v13, 0x4

    .line 86
    :cond_8
    const-string/jumbo v2, "flags"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 89
    :try_start_0
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v19, "obj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v18

    .line 91
    .local v18, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 92
    .local v17, "k":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-object v3, v3, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 97
    .end local v17    # "k":Ljava/lang/String;
    .end local v18    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v23

    .line 98
    .local v23, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error serializing extras for message!"

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v23    # "x":Ljava/lang/Exception;
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-boolean v2, v2, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget-boolean v2, v2, Lcom/vkcoffee/android/Message;->readState:Z

    if-nez v2, :cond_b

    .line 102
    const-string/jumbo v3, "messages"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "count(*)"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v5, v5, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 103
    .local v12, "crsr":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_a

    .line 104
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "INSERT OR REPLACE INTO messages_unread_counters (peer, unread_count) VALUES (%1$d, COALESCE((SELECT unread_count FROM messages_unread_counters WHERE peer=%1$d), 0)+1)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v6, v6, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 105
    .local v21, "query":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    .end local v21    # "query":Ljava/lang/String;
    :cond_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 109
    .end local v12    # "crsr":Landroid/database/Cursor;
    :cond_b
    const-string/jumbo v2, "messages"

    const/4 v3, 0x0

    const/4 v4, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 110
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 111
    const-string/jumbo v2, "peer"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string/jumbo v2, "msg_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-string/jumbo v2, "msg_time"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->time:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    :try_start_1
    const-string/jumbo v2, "messages_top_ids"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :goto_5
    return-void

    .line 94
    .restart local v18    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "obj":Lorg/json/JSONObject;
    :cond_c
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    .line 96
    .local v24, "xtra":Ljava/lang/String;
    const-string/jumbo v2, "extras"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 116
    .end local v18    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "obj":Lorg/json/JSONObject;
    .end local v24    # "xtra":Ljava/lang/String;
    :catch_1
    move-exception v23

    .line 117
    .local v23, "x":Landroid/database/sqlite/SQLiteConstraintException;
    const-string/jumbo v2, "messages_top_ids"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND msg_time<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/cache/AddMessageAction;->m:Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5
.end method
