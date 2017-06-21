.class public Lcom/vkcoffee/android/Message;
.super Lcom/vkcoffee/android/utils/MessageBase;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/Message$FwdMessage;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_FAILED:I = 0x2

.field public static final FLAG_SERVICE:I = 0x4

.field public static final FLAG_UNREAD:I = 0x1

.field public static final SELECTION:[Ljava/lang/String;


# instance fields
.field public extras:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public isServiceMessage:Z

.field public out:Z

.field public peer:I

.field public randomId:I

.field public readState:Z

.field public sendFailed:Z

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 215
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "mid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "peer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "random_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "sender"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "attachments"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "fwd"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "extras"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/Message;->SELECTION:[Ljava/lang/String;

    .line 386
    new-instance v0, Lcom/vkcoffee/android/Message$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/Message$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/MessageBase;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->out:Z

    .line 38
    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 39
    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 40
    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 46
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 16
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/utils/MessageBase;-><init>()V

    .line 36
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->out:Z

    .line 38
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 39
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 40
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 46
    sget-object v14, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    .line 273
    :try_start_0
    const-string/jumbo v14, "mid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/Message;->id:I

    .line 274
    const-string/jumbo v14, "peer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/Message;->peer:I

    .line 275
    const-string/jumbo v14, "random_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/Message;->randomId:I

    .line 276
    const-string/jumbo v14, "sender"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/Message;->sender:I

    .line 277
    const-string/jumbo v14, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkcoffee/android/Message;->setText(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v14, "time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/Message;->time:I

    .line 279
    const-string/jumbo v14, "flags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 280
    .local v3, "flags":I
    and-int/lit8 v14, v3, 0x1

    if-nez v14, :cond_1

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 281
    and-int/lit8 v14, v3, 0x2

    if-lez v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 282
    and-int/lit8 v14, v3, 0x4

    if-lez v14, :cond_3

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 283
    const-string/jumbo v14, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 284
    .local v2, "att":[B
    if-eqz v2, :cond_4

    .line 285
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 286
    .local v6, "is":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 287
    .local v9, "num":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v9, :cond_4

    .line 288
    invoke-static {v6}, Lcom/vkcoffee/android/attachments/Attachment;->deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v1

    .line 289
    .local v1, "a":Lcom/vkcoffee/android/attachments/Attachment;
    if-eqz v1, :cond_0

    .line 290
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lcom/vkcoffee/android/Message;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;I)V

    .line 287
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 280
    .end local v1    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v2    # "att":[B
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/DataInputStream;
    .end local v9    # "num":I
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 281
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 282
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 294
    .restart local v2    # "att":[B
    :cond_4
    const-string/jumbo v14, "fwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 295
    .local v4, "fwd":[B
    if-eqz v4, :cond_5

    .line 296
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 297
    .restart local v6    # "is":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 298
    .restart local v9    # "num":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v9, :cond_5

    .line 299
    invoke-static {v6}, Lcom/vkcoffee/android/Message$FwdMessage;->deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/Message$FwdMessage;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/vkcoffee/android/Message;->addFwdMessage(Lcom/vkcoffee/android/Message$FwdMessage;I)V

    .line 298
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 302
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/DataInputStream;
    .end local v9    # "num":I
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/Message;->sender:I

    sget v15, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v14, v15, :cond_7

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->out:Z

    .line 303
    const-string/jumbo v14, "extras"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 304
    .local v13, "xtra":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 305
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    .local v11, "obj":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 307
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 308
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 309
    .local v7, "k":Ljava/lang/String;
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 310
    .local v10, "o":Ljava/lang/Object;
    instance-of v14, v10, Ljava/lang/Integer;

    if-eqz v14, :cond_8

    .line 311
    check-cast v10, Ljava/lang/Integer;

    .end local v10    # "o":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Lcom/vkcoffee/android/Message;->putIntExtra(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 319
    .end local v2    # "att":[B
    .end local v3    # "flags":I
    .end local v4    # "fwd":[B
    .end local v7    # "k":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "obj":Lorg/json/JSONObject;
    .end local v13    # "xtra":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 320
    .local v12, "x":Ljava/lang/Exception;
    const-string/jumbo v14, "vk"

    const-string/jumbo v15, "error parsing message"

    invoke-static {v14, v15, v12}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    .end local v12    # "x":Ljava/lang/Exception;
    :cond_6
    return-void

    .line 302
    .restart local v2    # "att":[B
    .restart local v3    # "flags":I
    .restart local v4    # "fwd":[B
    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 312
    .restart local v7    # "k":Ljava/lang/String;
    .restart local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10    # "o":Ljava/lang/Object;
    .restart local v11    # "obj":Lorg/json/JSONObject;
    .restart local v13    # "xtra":Ljava/lang/String;
    :cond_8
    :try_start_1
    instance-of v14, v10, Ljava/lang/Boolean;

    if-eqz v14, :cond_9

    .line 313
    check-cast v10, Ljava/lang/Boolean;

    .end local v10    # "o":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Lcom/vkcoffee/android/Message;->putBooleanExtra(Ljava/lang/String;Z)V

    goto :goto_6

    .line 315
    .restart local v10    # "o":Ljava/lang/Object;
    :cond_9
    check-cast v10, Ljava/lang/String;

    .end local v10    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 16
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/utils/MessageBase;-><init>()V

    .line 36
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->out:Z

    .line 38
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 39
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 40
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 46
    sget-object v14, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    .line 220
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/Message;->id:I

    .line 221
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/Message;->peer:I

    .line 222
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/Message;->randomId:I

    .line 223
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/Message;->sender:I

    .line 224
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkcoffee/android/Message;->setText(Ljava/lang/String;)V

    .line 225
    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/Message;->time:I

    .line 226
    const/4 v14, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 227
    .local v3, "flags":I
    and-int/lit8 v14, v3, 0x1

    if-nez v14, :cond_1

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 228
    and-int/lit8 v14, v3, 0x2

    if-lez v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 229
    and-int/lit8 v14, v3, 0x4

    if-lez v14, :cond_3

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 230
    const/4 v14, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 231
    .local v2, "att":[B
    if-eqz v2, :cond_4

    .line 232
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 233
    .local v6, "is":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 234
    .local v9, "num":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v9, :cond_4

    .line 235
    invoke-static {v6}, Lcom/vkcoffee/android/attachments/Attachment;->deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v1

    .line 236
    .local v1, "a":Lcom/vkcoffee/android/attachments/Attachment;
    if-eqz v1, :cond_0

    .line 237
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lcom/vkcoffee/android/Message;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;I)V

    .line 234
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 227
    .end local v1    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v2    # "att":[B
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/DataInputStream;
    .end local v9    # "num":I
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 228
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 229
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 241
    .restart local v2    # "att":[B
    :cond_4
    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 242
    .local v4, "fwd":[B
    if-eqz v4, :cond_5

    .line 243
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 244
    .restart local v6    # "is":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 245
    .restart local v9    # "num":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v9, :cond_5

    .line 246
    invoke-static {v6}, Lcom/vkcoffee/android/Message$FwdMessage;->deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/Message$FwdMessage;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/vkcoffee/android/Message;->addFwdMessage(Lcom/vkcoffee/android/Message$FwdMessage;I)V

    .line 245
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 249
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/DataInputStream;
    .end local v9    # "num":I
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/Message;->sender:I

    sget v15, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v14, v15, :cond_7

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/Message;->out:Z

    .line 250
    const/16 v14, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 251
    .local v13, "xtra":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 252
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    .local v11, "obj":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 254
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 255
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 256
    .local v7, "k":Ljava/lang/String;
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 257
    .local v10, "o":Ljava/lang/Object;
    instance-of v14, v10, Ljava/lang/Integer;

    if-eqz v14, :cond_8

    .line 258
    check-cast v10, Ljava/lang/Integer;

    .end local v10    # "o":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Lcom/vkcoffee/android/Message;->putIntExtra(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 266
    .end local v2    # "att":[B
    .end local v3    # "flags":I
    .end local v4    # "fwd":[B
    .end local v7    # "k":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "obj":Lorg/json/JSONObject;
    .end local v13    # "xtra":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 267
    .local v12, "x":Ljava/lang/Exception;
    invoke-static {v12}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 269
    .end local v12    # "x":Ljava/lang/Exception;
    :cond_6
    return-void

    .line 249
    .restart local v2    # "att":[B
    .restart local v3    # "flags":I
    .restart local v4    # "fwd":[B
    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 259
    .restart local v7    # "k":Ljava/lang/String;
    .restart local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10    # "o":Ljava/lang/Object;
    .restart local v11    # "obj":Lorg/json/JSONObject;
    .restart local v13    # "xtra":Ljava/lang/String;
    :cond_8
    :try_start_1
    instance-of v14, v10, Ljava/lang/Boolean;

    if-eqz v14, :cond_9

    .line 260
    check-cast v10, Ljava/lang/Boolean;

    .end local v10    # "o":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Lcom/vkcoffee/android/Message;->putBooleanExtra(Ljava/lang/String;Z)V

    goto :goto_6

    .line 262
    .restart local v10    # "o":Ljava/lang/Object;
    :cond_9
    check-cast v10, Ljava/lang/String;

    .end local v10    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 85
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/MessageBase;-><init>()V

    .line 36
    iput-boolean v12, p0, Lcom/vkcoffee/android/Message;->out:Z

    .line 38
    iput-boolean v12, p0, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 39
    iput-boolean v12, p0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 40
    iput-boolean v12, p0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 46
    sget-object v13, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v13, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    .line 87
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v4

    .line 88
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 89
    iput-object v4, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/vkcoffee/android/Message;->setText(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lcom/vkcoffee/android/Message;->title:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-ne v13, v11, :cond_2

    move v13, v11

    :goto_0
    iput-boolean v13, p0, Lcom/vkcoffee/android/Message;->out:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-ne v13, v11, :cond_3

    move v13, v11

    :goto_1
    iput-boolean v13, p0, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-ne v13, v11, :cond_4

    move v13, v11

    :goto_2
    iput-boolean v13, p0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-ne v13, v11, :cond_5

    :goto_3
    iput-boolean v11, p0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, p0, Lcom/vkcoffee/android/Message;->time:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, p0, Lcom/vkcoffee/android/Message;->id:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, p0, Lcom/vkcoffee/android/Message;->sender:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, p0, Lcom/vkcoffee/android/Message;->peer:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, p0, Lcom/vkcoffee/android/Message;->randomId:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 105
    .local v7, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v7, :cond_6

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, "bl":I
    new-array v3, v2, [B

    .line 109
    .local v3, "buf":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 110
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 111
    .local v0, "ais":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 112
    .local v6, "is":Ljava/io/DataInputStream;
    invoke-static {v6}, Lcom/vkcoffee/android/attachments/Attachment;->deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v1

    .line 113
    .local v1, "att":Lcom/vkcoffee/android/attachments/Attachment;
    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0, v1, v7}, Lcom/vkcoffee/android/Message;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;I)V

    .line 105
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v0    # "ais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v2    # "bl":I
    .end local v3    # "buf":[B
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/DataInputStream;
    .end local v7    # "len":I
    :cond_2
    move v13, v12

    .line 93
    goto :goto_0

    :cond_3
    move v13, v12

    .line 94
    goto :goto_1

    :cond_4
    move v13, v12

    .line 95
    goto :goto_2

    :cond_5
    move v11, v12

    .line 96
    goto :goto_3

    .line 117
    .restart local v5    # "i":I
    .restart local v7    # "len":I
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 119
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v7, :cond_7

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    new-array v9, v11, [B

    .line 121
    .local v9, "sdata":[B
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readByteArray([B)V

    .line 122
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 123
    .local v8, "s":Ljava/io/DataInputStream;
    invoke-static {v8}, Lcom/vkcoffee/android/Message$FwdMessage;->deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/Message$FwdMessage;

    move-result-object v11

    invoke-virtual {p0, v11, v7}, Lcom/vkcoffee/android/Message;->addFwdMessage(Lcom/vkcoffee/android/Message$FwdMessage;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 126
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "i":I
    .end local v7    # "len":I
    .end local v8    # "s":Ljava/io/DataInputStream;
    .end local v9    # "sdata":[B
    :catch_0
    move-exception v10

    .line 127
    .local v10, "x":Ljava/lang/Exception;
    const-string/jumbo v11, "vk"

    invoke-static {v11, v10}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v10    # "x":Ljava/lang/Exception;
    :cond_7
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/Message$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/Message$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/Message;)V
    .locals 1
    .param p1, "m"    # Lcom/vkcoffee/android/Message;

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/MessageBase;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->out:Z

    .line 38
    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 39
    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 40
    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 46
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    .line 132
    iget-object v0, p1, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/Message;->setText(Ljava/lang/String;)V

    .line 133
    iget-object v0, p1, Lcom/vkcoffee/android/Message;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/Message;->title:Ljava/lang/String;

    .line 134
    iget v0, p1, Lcom/vkcoffee/android/Message;->randomId:I

    iput v0, p0, Lcom/vkcoffee/android/Message;->randomId:I

    .line 135
    iget-boolean v0, p1, Lcom/vkcoffee/android/Message;->out:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->out:Z

    .line 136
    iget-boolean v0, p1, Lcom/vkcoffee/android/Message;->sendFailed:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 137
    iget-boolean v0, p1, Lcom/vkcoffee/android/Message;->readState:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 138
    iget-boolean v0, p1, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 139
    iget v0, p1, Lcom/vkcoffee/android/Message;->time:I

    iput v0, p0, Lcom/vkcoffee/android/Message;->time:I

    .line 140
    iget v0, p1, Lcom/vkcoffee/android/Message;->id:I

    iput v0, p0, Lcom/vkcoffee/android/Message;->id:I

    .line 141
    iget v0, p1, Lcom/vkcoffee/android/Message;->sender:I

    iput v0, p0, Lcom/vkcoffee/android/Message;->sender:I

    .line 142
    iget v0, p1, Lcom/vkcoffee/android/Message;->peer:I

    iput v0, p0, Lcom/vkcoffee/android/Message;->peer:I

    .line 143
    iget-object v0, p1, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/Message;->addAttachments(Ljava/util/Collection;)V

    .line 144
    iget-object v0, p1, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/Message;->addFwdMessages(Ljava/util/Collection;)V

    .line 145
    iget-object v0, p1, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/Message;->putAllExtra(Landroid/os/Bundle;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0, v0}, Lcom/vkcoffee/android/Message;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 11
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p3, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/MessageBase;-><init>()V

    .line 36
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkcoffee/android/Message;->out:Z

    .line 38
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 39
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 40
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 46
    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v8, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    .line 154
    :try_start_0
    const-string/jumbo v8, "id"

    const-string/jumbo v9, "mid"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/Message;->id:I

    .line 155
    const-string/jumbo v8, "from_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 156
    const-string/jumbo v8, "from_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/Message;->sender:I

    .line 157
    const-string/jumbo v8, "chat_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const v8, 0x77359400

    const-string/jumbo v9, "chat_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    :goto_0
    iput v8, p0, Lcom/vkcoffee/android/Message;->peer:I

    .line 165
    :goto_1
    const-string/jumbo v8, "body"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/Message;->setText(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v8, "date"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/Message;->time:I

    .line 167
    const-string/jumbo v8, "title"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/Message;->title:Ljava/lang/String;

    .line 168
    const-string/jumbo v8, "random_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/Message;->randomId:I

    .line 169
    const-string/jumbo v8, "out"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/vkcoffee/android/Message;->out:Z

    .line 170
    const-string/jumbo v8, "read_state"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 171
    const-string/jumbo v8, "action"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 172
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 174
    const-string/jumbo v8, "action"

    const-string/jumbo v9, "action"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v8, "action_text"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 176
    const-string/jumbo v8, "action_text"

    const-string/jumbo v9, "action_text"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    const-string/jumbo v8, "action_mid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 179
    const-string/jumbo v8, "action_mid"

    const-string/jumbo v9, "action_mid"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/vkcoffee/android/Message;->putIntExtra(Ljava/lang/String;I)V

    .line 181
    :cond_1
    const-string/jumbo v8, "action_email"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 182
    const-string/jumbo v8, "action_email"

    const-string/jumbo v9, "action_email"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_2
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "action_mid"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 186
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "action_mid"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, "actMid":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 188
    .local v6, "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v9, "action_user_name_acc"

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/UserProfile;

    iget-object v8, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {p0, v9, v8}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v0    # "actMid":I
    .end local v6    # "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_3
    const-string/jumbo v8, "attachments"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 191
    const-string/jumbo v8, "attachments"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 192
    .local v2, "atts":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_f

    .line 193
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/vkcoffee/android/attachments/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v1

    .line 194
    .local v1, "att":Lcom/vkcoffee/android/attachments/Attachment;
    if-eqz v1, :cond_4

    .line 195
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/vkcoffee/android/Message;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;I)V

    .line 192
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 157
    .end local v1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v2    # "atts":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_5
    const-string/jumbo v8, "user_id"

    const-string/jumbo v9, "from_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    goto/16 :goto_0

    .line 158
    :cond_6
    const-string/jumbo v8, "uid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 159
    const-string/jumbo v8, "out"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    sget v8, Lcom/vkcoffee/android/Global;->uid:I

    :goto_5
    iput v8, p0, Lcom/vkcoffee/android/Message;->sender:I

    .line 160
    const-string/jumbo v8, "chat_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const v8, 0x77359400

    const-string/jumbo v9, "chat_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    :goto_6
    iput v8, p0, Lcom/vkcoffee/android/Message;->peer:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 210
    :catch_0
    move-exception v7

    .line 211
    .local v7, "x":Ljava/lang/Exception;
    const-string/jumbo v8, "vk"

    const-string/jumbo v9, "error parsing message"

    invoke-static {v8, v9, v7}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .end local v7    # "x":Ljava/lang/Exception;
    :cond_7
    :goto_7
    return-void

    .line 159
    :cond_8
    :try_start_1
    const-string/jumbo v8, "uid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_5

    .line 160
    :cond_9
    const-string/jumbo v8, "uid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_6

    .line 162
    :cond_a
    const-string/jumbo v8, "out"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    sget v8, Lcom/vkcoffee/android/Global;->uid:I

    :goto_8
    iput v8, p0, Lcom/vkcoffee/android/Message;->sender:I

    .line 163
    const-string/jumbo v8, "chat_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const v8, 0x77359400

    const-string/jumbo v9, "chat_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    :goto_9
    iput v8, p0, Lcom/vkcoffee/android/Message;->peer:I

    goto/16 :goto_1

    .line 162
    :cond_b
    const-string/jumbo v8, "user_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_8

    .line 163
    :cond_c
    const-string/jumbo v8, "user_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_9

    .line 169
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 170
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 199
    :cond_f
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-static {v8}, Lcom/vkcoffee/android/attachments/Attachment;->sort(Ljava/util/List;)V

    .line 200
    const-string/jumbo v8, "fwd_messages"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 201
    const-string/jumbo v8, "fwd_messages"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 202
    .local v3, "fwds":Lorg/json/JSONArray;
    invoke-direct {p0, v3, p2, p3}, Lcom/vkcoffee/android/Message;->parseFwdMessages(Lorg/json/JSONArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/Message;->addFwdMessages(Ljava/util/Collection;)V

    .line 204
    .end local v3    # "fwds":Lorg/json/JSONArray;
    :cond_10
    const-string/jumbo v8, "geo"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 205
    const-string/jumbo v8, "geo"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 206
    .local v5, "jg":Lorg/json/JSONObject;
    const-string/jumbo v8, "coordinates"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 207
    invoke-static {v5}, Lcom/vkcoffee/android/attachments/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/GeoAttachment;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/vkcoffee/android/Message;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7
.end method

.method private parseFwdMessages(Lorg/json/JSONArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "msgs"    # Lorg/json/JSONArray;
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Message$FwdMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 461
    .local p2, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p3, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message$FwdMessage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 463
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 464
    .local v5, "jm":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkcoffee/android/Message$FwdMessage;

    invoke-direct {v6}, Lcom/vkcoffee/android/Message$FwdMessage;-><init>()V

    .line 465
    .local v6, "m":Lcom/vkcoffee/android/Message$FwdMessage;
    const-string/jumbo v8, "user_id"

    const-string/jumbo v9, "uid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v6, Lcom/vkcoffee/android/Message$FwdMessage;->sender:I

    .line 466
    const-string/jumbo v8, "date"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/vkcoffee/android/Message$FwdMessage;->time:I

    .line 467
    const-string/jumbo v8, "body"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/vkcoffee/android/Message$FwdMessage;->setText(Ljava/lang/String;)V

    .line 468
    if-nez p2, :cond_1

    const-string/jumbo v8, "DELETED"

    :goto_1
    iput-object v8, v6, Lcom/vkcoffee/android/Message$FwdMessage;->username:Ljava/lang/String;

    .line 469
    if-nez p3, :cond_2

    const-string/jumbo v8, "http://vk.com/images/camera_c.gif"

    :goto_2
    iput-object v8, v6, Lcom/vkcoffee/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    .line 470
    const-string/jumbo v8, "attachments"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 471
    const-string/jumbo v8, "attachments"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 472
    .local v1, "atts":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 473
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/vkcoffee/android/attachments/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v0

    .line 474
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v0, v8}, Lcom/vkcoffee/android/Message$FwdMessage;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;I)V

    .line 472
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 468
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v1    # "atts":Lorg/json/JSONArray;
    .end local v3    # "j":I
    :cond_1
    iget v8, v6, Lcom/vkcoffee/android/Message$FwdMessage;->sender:I

    const-string/jumbo v9, "DELETED"

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_1

    .line 469
    :cond_2
    iget v8, v6, Lcom/vkcoffee/android/Message$FwdMessage;->sender:I

    const-string/jumbo v9, "http://vk.com/images/camera_c.gif"

    invoke-virtual {p3, v8, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_2

    .line 479
    :cond_3
    const-string/jumbo v8, "geo"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 480
    const-string/jumbo v8, "geo"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 481
    .local v4, "jg":Lorg/json/JSONObject;
    const-string/jumbo v8, "coordinates"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 482
    invoke-static {v4}, Lcom/vkcoffee/android/attachments/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/GeoAttachment;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcom/vkcoffee/android/Message$FwdMessage;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;I)V

    .line 485
    .end local v4    # "jg":Lorg/json/JSONObject;
    :cond_4
    iget-object v8, v6, Lcom/vkcoffee/android/Message$FwdMessage;->attachments:Ljava/util/List;

    invoke-static {v8}, Lcom/vkcoffee/android/attachments/Attachment;->sort(Ljava/util/List;)V

    .line 486
    const-string/jumbo v8, "fwd_messages"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 487
    const-string/jumbo v8, "fwd_messages"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-direct {p0, v8, p2, p3}, Lcom/vkcoffee/android/Message;->parseFwdMessages(Lorg/json/JSONArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/vkcoffee/android/Message$FwdMessage;->addFwdMessages(Ljava/util/Collection;)V

    .line 489
    :cond_5
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 491
    .end local v5    # "jm":Lorg/json/JSONObject;
    .end local v6    # "m":Lcom/vkcoffee/android/Message$FwdMessage;
    :cond_6
    return-object v7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public forward()Lcom/vkcoffee/android/Message$FwdMessage;
    .locals 2

    .prologue
    .line 447
    new-instance v0, Lcom/vkcoffee/android/Message$FwdMessage;

    invoke-direct {v0}, Lcom/vkcoffee/android/Message$FwdMessage;-><init>()V

    .line 448
    .local v0, "f":Lcom/vkcoffee/android/Message$FwdMessage;
    iget v1, p0, Lcom/vkcoffee/android/Message;->sender:I

    iput v1, v0, Lcom/vkcoffee/android/Message$FwdMessage;->sender:I

    .line 449
    iget v1, p0, Lcom/vkcoffee/android/Message;->time:I

    iput v1, v0, Lcom/vkcoffee/android/Message$FwdMessage;->time:I

    .line 450
    iget-object v1, p0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/Message$FwdMessage;->text:Ljava/lang/String;

    .line 451
    iget-object v1, p0, Lcom/vkcoffee/android/Message;->displayableText:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/vkcoffee/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    .line 452
    iget v1, p0, Lcom/vkcoffee/android/Message;->id:I

    iput v1, v0, Lcom/vkcoffee/android/Message$FwdMessage;->id:I

    .line 454
    iget-object v1, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/Message$FwdMessage;->addAttachments(Ljava/util/Collection;)V

    .line 455
    iget-object v1, p0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/Message$FwdMessage;->addFwdMessages(Ljava/util/Collection;)V

    .line 456
    return-object v0
.end method

.method public generateRandomId()V
    .locals 5

    .prologue
    .line 326
    :try_start_0
    iget v1, p0, Lcom/vkcoffee/android/Message;->id:I

    sget-object v2, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    sget-object v3, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    sget-object v3, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/vkcoffee/android/Message;->randomId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getServiceMessageText(Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "senderProfile"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "userAcc"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 401
    if-nez p1, :cond_0

    .line 402
    const-string/jumbo v1, "..."

    .line 443
    :goto_0
    return-object v1

    .line 404
    :cond_0
    const-string/jumbo v1, ""

    .line 405
    .local v1, "dtext":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "action"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "act":Ljava/lang/String;
    const-string/jumbo v4, "chat_photo_update"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 407
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v4, :cond_1

    const v4, 0x7f0800d0

    :goto_1
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v4, 0x7f0800d1

    goto :goto_1

    .line 408
    :cond_2
    const-string/jumbo v4, "chat_photo_remove"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 409
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v4, :cond_3

    const v4, 0x7f0800ce

    :goto_2
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v4, 0x7f0800cf

    goto :goto_2

    .line 410
    :cond_4
    const-string/jumbo v4, "chat_create"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 411
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v4, :cond_5

    const v4, 0x7f080472

    :goto_3
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "action_text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    const v4, 0x7f080473

    goto :goto_3

    .line 412
    :cond_6
    const-string/jumbo v4, "chat_title_update"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 413
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v4, :cond_7

    const v4, 0x7f080474

    :goto_4
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "action_text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const v4, 0x7f080475

    goto :goto_4

    .line 414
    :cond_8
    const-string/jumbo v4, "chat_invite_user"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 415
    iget-object v4, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "action_mid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 416
    .local v3, "uid":I
    iget v4, p0, Lcom/vkcoffee/android/Message;->sender:I

    if-ne v3, v4, :cond_a

    .line 417
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v4, :cond_9

    const v4, 0x7f08047c

    :goto_5
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    const v4, 0x7f08047d

    goto :goto_5

    .line 420
    :cond_a
    iget-object v4, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "action_email"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 421
    iget-object v4, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "action_email"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "name":Ljava/lang/String;
    :goto_6
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v4, :cond_c

    const v4, 0x7f080476

    :goto_7
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 423
    .end local v2    # "name":Ljava/lang/String;
    :cond_b
    move-object v2, p2

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_6

    .line 425
    :cond_c
    const v4, 0x7f080477

    goto :goto_7

    .line 427
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_d
    const-string/jumbo v4, "chat_kick_user"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 428
    iget-object v4, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "action_mid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 429
    .restart local v3    # "uid":I
    iget v4, p0, Lcom/vkcoffee/android/Message;->sender:I

    if-ne v3, v4, :cond_f

    .line 430
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v4, :cond_e

    const v4, 0x7f08047a

    :goto_8
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_e
    const v4, 0x7f08047b

    goto :goto_8

    .line 433
    :cond_f
    iget-object v4, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "action_email"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 434
    iget-object v4, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "action_email"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .restart local v2    # "name":Ljava/lang/String;
    :goto_9
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v4, :cond_11

    const v4, 0x7f080478

    :goto_a
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 436
    .end local v2    # "name":Ljava/lang/String;
    :cond_10
    move-object v2, p2

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_9

    .line 438
    :cond_11
    const v4, 0x7f080479

    goto :goto_a

    .line 441
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_12
    const-string/jumbo v1, ""

    goto/16 :goto_0
.end method

.method public putAllExtra(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "value"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v0, v1, :cond_1

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public putBooleanExtra(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v0, v1, :cond_0

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public putIntExtra(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public putStringExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v0, v1, :cond_0

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    .line 334
    invoke-static {p1}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Message;->displayableText:Ljava/lang/CharSequence;

    .line 335
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 11
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 342
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 343
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->title:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-boolean v8, p0, Lcom/vkcoffee/android/Message;->out:Z

    if-eqz v8, :cond_0

    move v8, v9

    :goto_0
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-boolean v8, p0, Lcom/vkcoffee/android/Message;->sendFailed:Z

    if-eqz v8, :cond_1

    move v8, v9

    :goto_1
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-boolean v8, p0, Lcom/vkcoffee/android/Message;->readState:Z

    if-eqz v8, :cond_2

    move v8, v9

    :goto_2
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-boolean v8, p0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-eqz v8, :cond_3

    :goto_3
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v8, p0, Lcom/vkcoffee/android/Message;->time:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget v8, p0, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v8, p0, Lcom/vkcoffee/android/Message;->sender:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v8, p0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget v8, p0, Lcom/vkcoffee/android/Message;->randomId:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 357
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 359
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 360
    .local v6, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/attachments/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    .line 361
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 362
    .local v1, "b":[B
    array-length v8, v1

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v1    # "b":[B
    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v4    # "i":I
    :cond_0
    move v8, v10

    .line 345
    goto :goto_0

    :cond_1
    move v8, v10

    .line 346
    goto :goto_1

    :cond_2
    move v8, v10

    .line 347
    goto :goto_2

    :cond_3
    move v9, v10

    .line 348
    goto :goto_3

    .line 364
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v4    # "i":I
    :catch_0
    move-exception v7

    .line 365
    .local v7, "x":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_5

    .line 368
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v7    # "x":Ljava/lang/Exception;
    :cond_4
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/4 v4, 0x0

    :goto_6
    :try_start_1
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 372
    iget-object v8, p0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/Message$FwdMessage;

    .line 373
    .local v5, "m":Lcom/vkcoffee/android/Message$FwdMessage;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 374
    .local v3, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 375
    .local v6, "os":Ljava/io/DataOutputStream;
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/Message$FwdMessage;->serialize(Ljava/io/DataOutputStream;)V

    .line 376
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 377
    .local v2, "bb":[B
    array-length v8, v2

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 380
    .end local v2    # "bb":[B
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "m":Lcom/vkcoffee/android/Message$FwdMessage;
    .end local v6    # "os":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v7

    .line 381
    .restart local v7    # "x":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 384
    .end local v7    # "x":Ljava/lang/Exception;
    :cond_5
    return-void
.end method
