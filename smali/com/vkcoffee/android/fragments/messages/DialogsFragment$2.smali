.class Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "DialogsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 263
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/content/Intent;

    .prologue
    .line 272
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->checkCrazyMode()Z

    move-result v13

    if-nez v13, :cond_0

    .line 273
    const-string v13, "com.vkcoffee.android.NEW_MESSAGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string v13, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Message;

    .line 279
    .local v1, "var10":Lcom/vkcoffee/android/Message;
    const-string v13, "peer_id"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 280
    .local v9, "var6":I
    const/4 v8, 0x0

    .line 281
    .local v8, "var5":Z
    const/4 v6, 0x0

    .line 284
    .local v6, "var3":I
    :goto_1
    move v7, v8

    .line 285
    .local v7, "var4":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v6, v13, :cond_6

    .line 336
    .end local v7    # "var4":I
    :goto_2
    if-nez v7, :cond_2

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    move-object/from16 v0, p2

    invoke-static {v13, v1, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/Message;Landroid/content/Intent;)Lcom/vkcoffee/android/data/Messages$GetUnreadCountCallback;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/vkcoffee/android/data/Messages;->getUnreadCount(ILcom/vkcoffee/android/data/Messages$GetUnreadCountCallback;)V

    .line 342
    .end local v1    # "var10":Lcom/vkcoffee/android/Message;
    .end local v6    # "var3":I
    .end local v8    # "var5":Z
    .end local v9    # "var6":I
    :cond_2
    const-string v13, "com.vkcoffee.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 343
    const-string v13, "msg_id"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 344
    .restart local v9    # "var6":I
    const-string v13, "read_state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 345
    .local v11, "var8":Z
    const-string v13, "le"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 346
    const-string v13, "peer_id"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 347
    .local v10, "var7":I
    const-string v13, "in"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 348
    .local v12, "var9":Z
    const/4 v3, 0x0

    .line 350
    .local v3, "var13":Z
    const/4 v5, 0x0

    .local v5, "var15":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v5, v13, :cond_d

    .line 368
    if-eqz v3, :cond_3

    .line 369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$1(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    .line 383
    .end local v3    # "var13":Z
    .end local v5    # "var15":I
    .end local v9    # "var6":I
    .end local v10    # "var7":I
    .end local v11    # "var8":Z
    .end local v12    # "var9":Z
    :cond_3
    :goto_4
    const-string v13, "com.vkcoffee.android.REFRESH_DIALOGS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->loadData(Z)V

    .line 419
    :cond_4
    :goto_5
    const-string v13, "com.vkcoffee.android.TYPING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 420
    const-string v13, "uid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 422
    .local v4, "var14":I
    const/4 v6, 0x0

    .restart local v6    # "var3":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v6, v13, :cond_18

    .line 434
    .end local v4    # "var14":I
    .end local v6    # "var3":I
    :cond_5
    const-string v13, "com.vkcoffee.android.STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$4(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;I)V

    goto/16 :goto_0

    .line 289
    .restart local v1    # "var10":Lcom/vkcoffee/android/Message;
    .restart local v6    # "var3":I
    .restart local v7    # "var4":I
    .restart local v8    # "var5":Z
    .restart local v9    # "var6":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/DialogEntry;

    .line 290
    .local v2, "var12":Lcom/vkcoffee/android/DialogEntry;
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    if-eqz v13, :cond_c

    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    if-eqz v13, :cond_c

    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v13, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v13, v9, :cond_c

    .line 291
    iget-boolean v13, v1, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v13, :cond_7

    iget-boolean v13, v1, Lcom/vkcoffee/android/Message;->readState:Z

    if-nez v13, :cond_7

    .line 292
    iget v13, v2, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v2, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 295
    :cond_7
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->id:I

    iget v14, v1, Lcom/vkcoffee/android/Message;->id:I

    if-le v13, v14, :cond_8

    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->id:I

    if-lez v13, :cond_8

    iget v13, v1, Lcom/vkcoffee/android/Message;->id:I

    if-lez v13, :cond_8

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$1(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    goto/16 :goto_0

    .line 300
    :cond_8
    iput-object v1, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 301
    const-string v13, "sender_photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_9

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    const/4 v8, 0x0

    .line 305
    const/4 v4, 0x0

    .line 308
    .restart local v4    # "var14":I
    :goto_7
    move v3, v8

    .line 309
    .local v3, "var13":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v4, v13, :cond_a

    .line 322
    .end local v3    # "var13":I
    :goto_8
    if-nez v3, :cond_9

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v4    # "var14":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$2(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$1(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    .line 329
    const/4 v7, 0x1

    .line 330
    .local v7, "var4":Z
    goto/16 :goto_2

    .line 313
    .restart local v3    # "var13":I
    .restart local v4    # "var14":I
    .local v7, "var4":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/DialogEntry;

    iget-object v13, v13, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->time:I

    iget-object v14, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v14, v14, Lcom/vkcoffee/android/Message;->time:I

    if-gt v13, v14, :cond_b

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    add-int/lit8 v14, v4, -0x1

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v13, v14, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 315
    const/4 v3, 0x1

    .line 316
    .local v3, "var13":Z
    goto :goto_8

    .line 319
    .local v3, "var13":I
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 307
    goto :goto_7

    .line 333
    .end local v3    # "var13":I
    .end local v4    # "var14":I
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 283
    goto/16 :goto_1

    .line 351
    .end local v1    # "var10":Lcom/vkcoffee/android/Message;
    .end local v2    # "var12":Lcom/vkcoffee/android/DialogEntry;
    .end local v6    # "var3":I
    .end local v7    # "var4":I
    .end local v8    # "var5":Z
    .local v3, "var13":Z
    .restart local v5    # "var15":I
    .restart local v10    # "var7":I
    .restart local v11    # "var8":Z
    .restart local v12    # "var9":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/DialogEntry;

    .line 352
    .restart local v2    # "var12":Lcom/vkcoffee/android/DialogEntry;
    move v7, v3

    .line 353
    .local v7, "var4":Z
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->peer:I

    if-ne v13, v10, :cond_e

    .line 354
    move v7, v3

    .line 355
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->id:I

    if-gt v13, v9, :cond_e

    .line 356
    move v7, v3

    .line 357
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v13, v13, Lcom/vkcoffee/android/Message;->out:Z

    if-eq v13, v12, :cond_e

    .line 358
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iput-boolean v11, v13, Lcom/vkcoffee/android/Message;->readState:Z

    .line 359
    const/4 v13, 0x0

    iput v13, v2, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 360
    const/4 v7, 0x1

    .line 365
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 350
    move v3, v7

    goto/16 :goto_3

    .line 372
    .end local v2    # "var12":Lcom/vkcoffee/android/DialogEntry;
    .end local v3    # "var13":Z
    .end local v5    # "var15":I
    .end local v7    # "var4":Z
    .end local v10    # "var7":I
    .end local v12    # "var9":Z
    :cond_f
    const/4 v6, 0x0

    .restart local v6    # "var3":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_3

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/DialogEntry;

    .line 374
    .restart local v2    # "var12":Lcom/vkcoffee/android/DialogEntry;
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->id:I

    if-ne v13, v9, :cond_10

    .line 375
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iput-boolean v11, v13, Lcom/vkcoffee/android/Message;->readState:Z

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$1(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    goto/16 :goto_4

    .line 372
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 385
    .end local v2    # "var12":Lcom/vkcoffee/android/DialogEntry;
    .end local v6    # "var3":I
    .end local v9    # "var6":I
    .end local v11    # "var8":Z
    :cond_11
    const-string v13, "com.vkcoffee.android.USER_PRESENCE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 386
    const-string v13, "uid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 387
    .restart local v4    # "var14":I
    const-string v13, "online"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 389
    .restart local v5    # "var15":I
    const/4 v6, 0x0

    .restart local v6    # "var3":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    .line 390
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/DialogEntry;

    .line 391
    .restart local v2    # "var12":Lcom/vkcoffee/android/DialogEntry;
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v13, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v13, v4, :cond_12

    .line 392
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iput v5, v13, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 393
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$1(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    .line 389
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 396
    .end local v2    # "var12":Lcom/vkcoffee/android/DialogEntry;
    .end local v4    # "var14":I
    .end local v5    # "var15":I
    .end local v6    # "var3":I
    :cond_13
    const-string v13, "com.vkcoffee.android.CHAT_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 397
    const-string v13, "id"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 399
    .restart local v4    # "var14":I
    const/4 v6, 0x0

    .restart local v6    # "var3":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    .line 400
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/DialogEntry;

    .line 401
    .restart local v2    # "var12":Lcom/vkcoffee/android/DialogEntry;
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->peer:I

    const v14, 0x77359400

    add-int/2addr v14, v4

    if-ne v13, v14, :cond_14

    .line 402
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13, v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;)Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/vkcoffee/android/data/Messages;->getChatUsers(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V

    goto/16 :goto_5

    .line 399
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 406
    .end local v2    # "var12":Lcom/vkcoffee/android/DialogEntry;
    .end local v4    # "var14":I
    .end local v6    # "var3":I
    :cond_15
    const-string v13, "com.vkcoffee.android.DIALOG_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 407
    const-string v13, "id"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 409
    .restart local v4    # "var14":I
    const/4 v6, 0x0

    .restart local v6    # "var3":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    .line 410
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/DialogEntry;

    iget-object v13, v13, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->peer:I

    if-ne v13, v4, :cond_16

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$3(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V

    goto/16 :goto_5

    .line 409
    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 415
    .end local v4    # "var14":I
    .end local v6    # "var3":I
    :cond_17
    const-string v13, "com.vkcoffee.android.MUTE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$3(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V

    goto/16 :goto_5

    .line 423
    .restart local v4    # "var14":I
    .restart local v6    # "var3":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/DialogEntry;

    .line 424
    .restart local v2    # "var12":Lcom/vkcoffee/android/DialogEntry;
    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    if-eqz v13, :cond_19

    iget-object v13, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->peer:I

    if-ne v13, v4, :cond_19

    sget-boolean v13, Lcom/vkcoffee/android/LongPollService;->longPollRunning:Z

    if-eqz v13, :cond_19

    sget-object v13, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    if-eqz v13, :cond_19

    .line 426
    :try_start_0
    sget-object v13, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    invoke-virtual {v13, v4}, Lcom/vkcoffee/android/LongPollService;->getTypings(I)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v14, v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_19
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 427
    :catch_0
    move-exception v13

    goto :goto_d
.end method
