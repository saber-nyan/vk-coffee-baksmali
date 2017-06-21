.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 278
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 38
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/content/Intent;

    .prologue
    .line 280
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v34

    if-nez v34, :cond_1

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    if-eqz v34, :cond_1

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_2

    .line 284
    const-string v6, ""

    .line 291
    .local v6, "var13":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v34

    sparse-switch v34, :sswitch_data_0

    .line 365
    :cond_0
    const/16 v23, -0x1

    .line 382
    .local v23, "var3":B
    :goto_1
    packed-switch v23, :pswitch_data_0

    .line 865
    .end local v6    # "var13":Ljava/lang/String;
    .end local v23    # "var3":B
    :cond_1
    :goto_2
    return-void

    .line 286
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "var13":Ljava/lang/String;
    goto :goto_0

    .line 291
    :sswitch_0
    const-string v34, "com.vkcoffee.android.MESSAGE_RSTATE_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 347
    const-string v34, "com.vkcoffee.android.MESSAGE_RSTATE_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 348
    const/16 v23, 0x1

    .line 349
    .restart local v23    # "var3":B
    goto :goto_1

    .line 291
    .end local v23    # "var3":B
    :sswitch_1
    const-string v34, "com.vkcoffee.android.DIALOG_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 305
    const-string v34, "com.vkcoffee.android.DIALOG_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 306
    const/16 v23, 0x3

    .line 307
    .restart local v23    # "var3":B
    goto :goto_1

    .line 291
    .end local v23    # "var3":B
    :sswitch_2
    const-string v34, "com.vkcoffee.android.MESSAGE_ID_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 311
    const-string v34, "com.vkcoffee.android.MESSAGE_ID_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 312
    const/16 v23, 0x8

    .line 313
    .restart local v23    # "var3":B
    goto :goto_1

    .line 291
    .end local v23    # "var3":B
    :sswitch_3
    const-string v34, "com.vkcoffee.android.MESSAGE_DELETED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 359
    const-string v34, "com.vkcoffee.android.MESSAGE_DELETED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 360
    const/16 v23, 0x0

    .line 361
    .restart local v23    # "var3":B
    goto :goto_1

    .line 291
    .end local v23    # "var3":B
    :sswitch_4
    const-string v34, "com.vkcoffee.android.MESSAGE_SEND_FAILED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 329
    const-string v34, "com.vkcoffee.android.MESSAGE_SEND_FAILED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 330
    const/16 v23, 0xa

    .line 331
    .restart local v23    # "var3":B
    goto :goto_1

    .line 291
    .end local v23    # "var3":B
    :sswitch_5
    const-string v34, "com.vkcoffee.android.NEW_MESSAGE"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 335
    const-string v34, "com.vkcoffee.android.NEW_MESSAGE"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 336
    const/16 v23, 0x5

    .line 337
    .restart local v23    # "var3":B
    goto/16 :goto_1

    .line 291
    .end local v23    # "var3":B
    :sswitch_6
    const-string v34, "com.vkcoffee.android.USER_PRESENCE"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 293
    const-string v34, "com.vkcoffee.android.USER_PRESENCE"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 294
    const/16 v23, 0x7

    .line 295
    .restart local v23    # "var3":B
    goto/16 :goto_1

    .line 291
    .end local v23    # "var3":B
    :sswitch_7
    const-string v34, "com.vkcoffee.android.REFRESH_DIALOGS"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 299
    const-string v34, "com.vkcoffee.android.REFRESH_DIALOGS"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 300
    const/16 v23, 0xb

    .line 301
    .restart local v23    # "var3":B
    goto/16 :goto_1

    .line 291
    .end local v23    # "var3":B
    :sswitch_8
    const-string v34, "com.vkcoffee.android.CHAT_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 317
    const-string v34, "com.vkcoffee.android.CHAT_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 318
    const/16 v23, 0x4

    .line 319
    .restart local v23    # "var3":B
    goto/16 :goto_1

    .line 291
    .end local v23    # "var3":B
    :sswitch_9
    const-string v34, "com.vkcoffee.android.TYPING"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 323
    const-string v34, "com.vkcoffee.android.TYPING"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 324
    const/16 v23, 0x6

    .line 325
    .restart local v23    # "var3":B
    goto/16 :goto_1

    .line 291
    .end local v23    # "var3":B
    :sswitch_a
    const-string v34, "com.vkcoffee.android.UPLOAD_DONE"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 353
    const-string v34, "com.vkcoffee.android.UPLOAD_DONE"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 354
    const/16 v23, 0x9

    .line 355
    .restart local v23    # "var3":B
    goto/16 :goto_1

    .line 291
    .end local v23    # "var3":B
    :sswitch_b
    const-string v34, "com.vkcoffee.android.MUTE_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 341
    const-string v34, "com.vkcoffee.android.MUTE_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 342
    const/16 v23, 0x2

    .line 343
    .restart local v23    # "var3":B
    goto/16 :goto_1

    .line 384
    :pswitch_0
    const-string v34, "msg_id"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 385
    .local v20, "var27":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 387
    .local v8, "var15":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_5

    .line 395
    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v3, "var10":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 398
    .local v15, "var22":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_6

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->fixTimes(Ljava/util/List;)I

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    goto/16 :goto_2

    .line 388
    .end local v3    # "var10":Ljava/util/ArrayList;
    .end local v15    # "var22":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/Message;

    .line 389
    .local v17, "var24":Lcom/vkcoffee/android/Message;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 399
    .end local v17    # "var24":Lcom/vkcoffee/android/Message;
    .restart local v3    # "var10":Ljava/util/ArrayList;
    .restart local v15    # "var22":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 400
    .local v10, "var17":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    iget v0, v10, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 401
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 410
    .end local v3    # "var10":Ljava/util/ArrayList;
    .end local v8    # "var15":Ljava/util/Iterator;
    .end local v10    # "var17":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v15    # "var22":Ljava/util/Iterator;
    .end local v20    # "var27":I
    :pswitch_1
    const-string v34, "msg_id"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 411
    .local v21, "var28":I
    const-string v34, "read_state"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v33

    .line 412
    .local v33, "var9":Z
    const-string v34, "le"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 413
    const-string v34, "in"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    .line 414
    .local v32, "var8":Z
    const-string v34, "peer_id"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 417
    .restart local v8    # "var15":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_a

    .line 424
    const/16 v20, 0x0

    .restart local v20    # "var27":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 426
    .local v16, "var23":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v21

    if-gt v0, v1, :cond_9

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isOut:Z

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isFailed:Z

    move/from16 v34, v0

    if-nez v34, :cond_9

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v34

    if-nez v34, :cond_b

    .line 428
    const/4 v11, 0x0

    .line 433
    .local v11, "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :goto_7
    instance-of v0, v11, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    move/from16 v34, v0

    if-eqz v34, :cond_8

    .line 434
    check-cast v11, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    .end local v11    # "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    move/from16 v0, v33

    invoke-virtual {v11, v0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->setReadState(Z)V

    .line 437
    :cond_8
    move/from16 v0, v33

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->readState:Z

    .line 424
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 418
    .end local v16    # "var23":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v20    # "var27":I
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/Message;

    .line 419
    .restart local v17    # "var24":Lcom/vkcoffee/android/Message;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v21

    if-gt v0, v1, :cond_7

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/vkcoffee/android/Message;->out:Z

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    .line 420
    move/from16 v0, v33

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/vkcoffee/android/Message;->readState:Z

    goto/16 :goto_5

    .line 430
    .end local v17    # "var24":Lcom/vkcoffee/android/Message;
    .restart local v16    # "var23":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .restart local v20    # "var27":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$4(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->getHeaderViewsCount()I

    move-result v35

    add-int v35, v35, v20

    invoke-virtual/range {v34 .. v35}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->findViewHolderForAdapterPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v11

    .restart local v11    # "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    goto :goto_7

    .line 443
    .end local v8    # "var15":Ljava/util/Iterator;
    .end local v11    # "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .end local v16    # "var23":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v20    # "var27":I
    .end local v32    # "var8":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 445
    .restart local v8    # "var15":Ljava/util/Iterator;
    :cond_d
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_f

    .line 452
    const/16 v20, 0x0

    .restart local v20    # "var27":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_1

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 454
    .restart local v10    # "var17":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    iget v0, v10, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 455
    move/from16 v0, v33

    iput-boolean v0, v10, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->readState:Z

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v34

    if-nez v34, :cond_10

    .line 457
    const/4 v11, 0x0

    .line 462
    .restart local v11    # "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :goto_a
    instance-of v0, v11, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    move/from16 v34, v0

    if-eqz v34, :cond_e

    .line 463
    check-cast v11, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    .end local v11    # "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    move/from16 v0, v33

    invoke-virtual {v11, v0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->setReadState(Z)V

    .line 452
    :cond_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 446
    .end local v10    # "var17":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v20    # "var27":I
    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/Message;

    .line 447
    .restart local v17    # "var24":Lcom/vkcoffee/android/Message;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 448
    move/from16 v0, v33

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/vkcoffee/android/Message;->readState:Z

    goto :goto_8

    .line 459
    .end local v17    # "var24":Lcom/vkcoffee/android/Message;
    .restart local v10    # "var17":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .restart local v20    # "var27":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$4(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->getHeaderViewsCount()I

    move-result v35

    add-int v35, v35, v20

    invoke-virtual/range {v34 .. v35}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->findViewHolderForAdapterPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v11

    .restart local v11    # "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    goto :goto_a

    .line 471
    .end local v8    # "var15":Ljava/util/Iterator;
    .end local v10    # "var17":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v11    # "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .end local v20    # "var27":I
    .end local v21    # "var28":I
    .end local v33    # "var9":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$9(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/lang/CharSequence;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 474
    :pswitch_3
    const-string v34, "id"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$9(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/lang/CharSequence;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 479
    :pswitch_4
    const-string v34, "id"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    const v35, 0x77359400

    add-int v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$10(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    goto/16 :goto_2

    .line 484
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$11(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v34

    if-eqz v34, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-eqz v34, :cond_1

    :cond_11
    const-string v34, "peer_id"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$12(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v34

    if-lez v34, :cond_12

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$908(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    goto/16 :goto_2

    .line 488
    :cond_12
    const-string v34, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/Message;

    .line 489
    .local v9, "var16":Lcom/vkcoffee/android/Message;
    iget-object v0, v9, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    move-object/from16 v34, v0

    const-string v35, "action_mid"

    invoke-virtual/range {v34 .. v35}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$13(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/util/SparseArray;

    move-result-object v34

    iget-object v0, v9, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    move-object/from16 v35, v0

    const-string v36, "action_mid"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v35

    const-string v36, "action_user_name_acc"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 496
    .local v24, "var30":Ljava/util/Iterator;
    :cond_14
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_15

    .line 497
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/Message;

    .line 498
    .restart local v17    # "var24":Lcom/vkcoffee/android/Message;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    iget v0, v9, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_14

    .line 502
    iget v0, v9, Lcom/vkcoffee/android/Message;->time:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/Message;->time:I

    goto/16 :goto_2

    .line 506
    .end local v17    # "var24":Lcom/vkcoffee/android/Message;
    :cond_15
    const/16 v22, -0x1

    .line 507
    .local v22, "var29":B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-nez v34, :cond_19

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    move/from16 v29, v22

    .line 563
    .local v29, "var5":I
    :cond_16
    :goto_b
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 564
    .local v18, "var25":Ljava/util/HashSet;
    const/16 v34, -0x1

    move/from16 v0, v29

    move/from16 v1, v34

    if-ne v0, v1, :cond_20

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->buildItems(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->fixTimes(Ljava/util/List;)I

    .line 573
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v34

    if-nez v34, :cond_21

    .line 574
    const/4 v13, 0x0

    .line 579
    .local v13, "var20":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :goto_d
    instance-of v0, v13, Landroid/support/v7/widget/LinearLayoutManager;

    move/from16 v34, v0

    if-eqz v34, :cond_17

    .line 580
    check-cast v13, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v13    # "var20":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v13}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v35, v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_22

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->scrollToPosition(I)V

    .line 587
    :cond_17
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$15(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v34

    if-eqz v34, :cond_18

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$16(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    .line 592
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$17(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/Collection;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v34

    if-eqz v34, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->getLastVisiblePosition()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getCount()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$4(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->getFooterViewsCount()I

    move-result v36

    sub-int v35, v35, v36

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$18(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$19(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    goto/16 :goto_2

    .line 510
    .end local v18    # "var25":Ljava/util/HashSet;
    .end local v29    # "var5":I
    :cond_19
    iget v0, v9, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    if-ltz v34, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/Message;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    iget v0, v9, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/Message;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    if-gtz v34, :cond_1f

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/Message;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/Message;->time:I

    move/from16 v34, v0

    iget v0, v9, Lcom/vkcoffee/android/Message;->time:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_1f

    .line 511
    const v20, 0x7fffffff

    .line 512
    .restart local v20    # "var27":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v21, v34, -0x1

    .line 516
    .restart local v21    # "var28":I
    :goto_f
    move/from16 v29, v22

    .line 517
    .restart local v29    # "var5":I
    if-ltz v21, :cond_16

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/Message;

    .line 522
    .restart local v17    # "var24":Lcom/vkcoffee/android/Message;
    iget v0, v9, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v20

    if-lt v0, v1, :cond_1d

    .line 523
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    if-lez v34, :cond_1b

    .line 524
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v20, v0

    .line 529
    :goto_10
    iget v0, v9, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    move/from16 v0, v20

    move/from16 v1, v34

    if-gt v0, v1, :cond_1d

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    add-int/lit8 v36, v21, 0x2

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/Message;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v31, v0

    .line 531
    .local v31, "var7":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    add-int/lit8 v36, v21, 0x2

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 532
    const/16 v20, 0x0

    .line 535
    :goto_11
    move/from16 v29, v22

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_16

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 541
    move/from16 v29, v20

    .line 542
    goto/16 :goto_b

    .line 526
    .end local v31    # "var7":I
    :cond_1b
    const v20, 0x7fffffff

    goto/16 :goto_10

    .line 545
    .restart local v31    # "var7":I
    :cond_1c
    add-int/lit8 v20, v20, 0x1

    .line 534
    goto :goto_11

    .line 550
    .end local v31    # "var7":I
    :cond_1d
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    if-lez v34, :cond_1e

    .line 551
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v20, v0

    .line 556
    :goto_12
    add-int/lit8 v21, v21, -0x1

    .line 515
    goto/16 :goto_f

    .line 553
    :cond_1e
    const v20, 0x7fffffff

    goto :goto_12

    .line 559
    .end local v17    # "var24":Lcom/vkcoffee/android/Message;
    .end local v20    # "var27":I
    .end local v21    # "var28":I
    .end local v29    # "var5":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    move/from16 v29, v22

    .restart local v29    # "var5":I
    goto/16 :goto_b

    .line 568
    .restart local v18    # "var25":Ljava/util/HashSet;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->buildItems(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v35

    move-object/from16 v0, v34

    move/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->fixTimes(Ljava/util/List;)I

    goto/16 :goto_c

    .line 576
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v13

    .restart local v13    # "var20":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    goto/16 :goto_d

    .line 583
    .end local v13    # "var20":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$14(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    goto/16 :goto_e

    .line 602
    .end local v9    # "var16":Lcom/vkcoffee/android/Message;
    .end local v18    # "var25":Ljava/util/HashSet;
    .end local v22    # "var29":B
    .end local v24    # "var30":Ljava/util/Iterator;
    .end local v29    # "var5":I
    :pswitch_6
    const-string v34, "uid"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v34

    const v35, 0x77359400

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_25

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v20

    .line 609
    .restart local v20    # "var27":I
    :goto_13
    const-string v34, "stop"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v34

    if-nez v34, :cond_26

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$20(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_23

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$20(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_23
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$21(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/util/SparseArray;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v34

    if-nez v34, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$21(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/util/SparseArray;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->size()I

    move-result v34

    if-lez v34, :cond_24

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$10(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 621
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$22(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    goto/16 :goto_2

    .line 606
    .end local v20    # "var27":I
    :cond_25
    const-string v34, "user"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .restart local v20    # "var27":I
    goto :goto_13

    .line 614
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$20(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_14

    .line 625
    .end local v20    # "var27":I
    :pswitch_7
    const-string v34, "uid"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 626
    .restart local v21    # "var28":I
    const-string v34, "online"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 627
    .restart local v20    # "var27":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v34

    move/from16 v0, v21

    move/from16 v1, v34

    if-ne v0, v1, :cond_1

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$23(Lcom/vkcoffee/android/fragments/messages/ChatFragment;I)V

    goto/16 :goto_2

    .line 632
    .end local v20    # "var27":I
    .end local v21    # "var28":I
    :pswitch_8
    const-string v34, "oldID"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 633
    .restart local v20    # "var27":I
    const-string v34, "newID"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 634
    .restart local v21    # "var28":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 636
    .restart local v15    # "var22":Ljava/util/Iterator;
    :cond_27
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_2a

    .line 646
    :goto_15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .restart local v3    # "var10":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 649
    .restart local v8    # "var15":Ljava/util/Iterator;
    :cond_28
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_2b

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v34

    sget v35, Lcom/vkcoffee/android/Global;->uid:I

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_29

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->showTyping(Z)V

    .line 665
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$16(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    goto/16 :goto_2

    .line 637
    .end local v3    # "var10":Ljava/util/ArrayList;
    .end local v8    # "var15":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/Message;

    .line 638
    .restart local v9    # "var16":Lcom/vkcoffee/android/Message;
    iget v0, v9, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v20

    if-ne v0, v1, :cond_27

    .line 639
    const-string v34, "vk"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "set msg id "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " -> "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    move/from16 v0, v21

    iput v0, v9, Lcom/vkcoffee/android/Message;->id:I

    .line 641
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v34

    move/from16 v0, v34

    iput v0, v9, Lcom/vkcoffee/android/Message;->time:I

    goto/16 :goto_15

    .line 650
    .end local v9    # "var16":Lcom/vkcoffee/android/Message;
    .restart local v3    # "var10":Ljava/util/ArrayList;
    .restart local v8    # "var15":Ljava/util/Iterator;
    :cond_2b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 651
    .restart local v16    # "var23":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    .line 652
    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    .line 653
    const/16 v34, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->updateHolder(Z)V

    .line 654
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 668
    .end local v3    # "var10":Ljava/util/ArrayList;
    .end local v8    # "var15":Ljava/util/Iterator;
    .end local v15    # "var22":Ljava/util/Iterator;
    .end local v16    # "var23":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v20    # "var27":I
    .end local v21    # "var28":I
    :pswitch_9
    const-string v34, "id"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 669
    .local v30, "var6":I
    const/16 v19, 0x0

    .line 670
    .local v19, "var26":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 673
    .local v27, "var33":Ljava/util/Iterator;
    :cond_2c
    :goto_17
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_2e

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 708
    move/from16 v28, v19

    .line 711
    .local v28, "var4":Z
    :cond_2d
    move/from16 v19, v28

    .line 712
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_33

    .line 759
    :goto_18
    if-eqz v19, :cond_1

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    goto/16 :goto_2

    .line 674
    .end local v28    # "var4":Z
    :cond_2e
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 676
    .local v25, "var31":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    const/16 v21, 0x0

    .restart local v21    # "var28":I
    :goto_19
    invoke-virtual/range {v25 .. v25}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateAttachments()Ljava/util/List;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_2c

    .line 677
    invoke-virtual/range {v25 .. v25}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateAttachments()Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkcoffee/android/attachments/Attachment;

    .line 678
    .local v12, "var19":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v12, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move/from16 v34, v0

    if-eqz v34, :cond_2f

    move-object/from16 v34, v12

    check-cast v34, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-ne v0, v1, :cond_2f

    .line 679
    const-string v34, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v0, v25

    move/from16 v1, v21

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setAttachment(ILcom/vkcoffee/android/attachments/Attachment;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processZhukovLayout(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;)V

    .line 681
    const/16 v19, 0x1

    .line 682
    goto/16 :goto_17

    .line 685
    :cond_2f
    instance-of v0, v12, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    move/from16 v34, v0

    if-eqz v34, :cond_30

    move-object/from16 v34, v12

    check-cast v34, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    .line 686
    const-string v34, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v0, v25

    move/from16 v1, v21

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setAttachment(ILcom/vkcoffee/android/attachments/Attachment;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processZhukovLayout(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;)V

    .line 688
    const/16 v19, 0x1

    .line 689
    goto/16 :goto_17

    .line 692
    :cond_30
    instance-of v0, v12, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    move/from16 v34, v0

    if-eqz v34, :cond_31

    move-object/from16 v34, v12

    check-cast v34, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-ne v0, v1, :cond_31

    .line 693
    new-instance v35, Lcom/vkcoffee/android/attachments/VideoAttachment;

    const-string v34, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    move-object/from16 v0, v25

    move/from16 v1, v21

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setAttachment(ILcom/vkcoffee/android/attachments/Attachment;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processZhukovLayout(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;)V

    .line 695
    const/16 v19, 0x1

    .line 696
    goto/16 :goto_17

    .line 699
    :cond_31
    instance-of v0, v12, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    move/from16 v34, v0

    if-eqz v34, :cond_32

    check-cast v12, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    .end local v12    # "var19":Lcom/vkcoffee/android/attachments/Attachment;
    iget v0, v12, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-ne v0, v1, :cond_32

    .line 700
    const-string v34, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v0, v25

    move/from16 v1, v21

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setAttachment(ILcom/vkcoffee/android/attachments/Attachment;)V

    .line 701
    const/16 v19, 0x1

    .line 702
    goto/16 :goto_17

    .line 676
    :cond_32
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_19

    .line 716
    .end local v21    # "var28":I
    .end local v25    # "var31":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .restart local v28    # "var4":Z
    :cond_33
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkcoffee/android/Message;

    .line 717
    .local v26, "var32":Lcom/vkcoffee/android/Message;
    const/16 v29, 0x0

    .line 720
    .restart local v29    # "var5":I
    :goto_1a
    move/from16 v19, v28

    .line 721
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v29

    move/from16 v1, v34

    if-lt v0, v1, :cond_34

    .line 756
    :goto_1b
    move/from16 v28, v19

    .line 757
    if-eqz v19, :cond_2d

    goto/16 :goto_18

    .line 725
    :cond_34
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkcoffee/android/attachments/Attachment;

    .line 726
    .restart local v12    # "var19":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v12, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move/from16 v34, v0

    if-eqz v34, :cond_35

    move-object/from16 v34, v12

    check-cast v34, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-ne v0, v1, :cond_35

    .line 727
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v35, v0

    const-string v34, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v0, v35

    move/from16 v1, v29

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 728
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processZhukovLayout(Ljava/util/List;Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;)V

    .line 729
    const/16 v19, 0x1

    .line 730
    goto :goto_1b

    .line 733
    :cond_35
    instance-of v0, v12, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    move/from16 v34, v0

    if-eqz v34, :cond_36

    move-object/from16 v34, v12

    check-cast v34, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-ne v0, v1, :cond_36

    .line 734
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v35, v0

    const-string v34, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v0, v35

    move/from16 v1, v29

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 735
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processZhukovLayout(Ljava/util/List;Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;)V

    .line 736
    const/16 v19, 0x1

    .line 737
    goto/16 :goto_1b

    .line 740
    :cond_36
    instance-of v0, v12, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    move/from16 v34, v0

    if-eqz v34, :cond_37

    move-object/from16 v34, v12

    check-cast v34, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-ne v0, v1, :cond_37

    .line 741
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v35, v0

    new-instance v36, Lcom/vkcoffee/android/attachments/VideoAttachment;

    const-string v34, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    move-object/from16 v0, v35

    move/from16 v1, v29

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 742
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processZhukovLayout(Ljava/util/List;Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;)V

    .line 743
    const/16 v19, 0x1

    .line 744
    goto/16 :goto_1b

    .line 747
    :cond_37
    instance-of v0, v12, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    move/from16 v34, v0

    if-eqz v34, :cond_38

    check-cast v12, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    .end local v12    # "var19":Lcom/vkcoffee/android/attachments/Attachment;
    iget v0, v12, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-ne v0, v1, :cond_38

    .line 748
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v35, v0

    const-string v34, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v0, v35

    move/from16 v1, v29

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 749
    const/16 v19, 0x1

    .line 750
    goto/16 :goto_1b

    .line 753
    :cond_38
    add-int/lit8 v29, v29, 0x1

    .line 719
    goto/16 :goto_1a

    .line 764
    .end local v19    # "var26":Z
    .end local v26    # "var32":Lcom/vkcoffee/android/Message;
    .end local v27    # "var33":Ljava/util/Iterator;
    .end local v28    # "var4":Z
    .end local v29    # "var5":I
    .end local v30    # "var6":I
    :pswitch_a
    const-string v34, "id"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 765
    .restart local v21    # "var28":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 767
    .restart local v24    # "var30":Ljava/util/Iterator;
    :cond_39
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_3b

    .line 775
    :goto_1c
    const/16 v20, 0x0

    .restart local v20    # "var27":I
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_1

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 777
    .restart local v10    # "var17":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    iget v0, v10, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v21

    if-ne v0, v1, :cond_3e

    iget v0, v10, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_3a

    iget v0, v10, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v34, v0

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_3e

    .line 778
    :cond_3a
    const-string v34, "privacy"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v34

    if-nez v34, :cond_3c

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    const v35, 0x7f0802b0

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/Toast;->show()V

    .line 784
    :goto_1e
    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v10, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isFailed:Z

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v34

    if-nez v34, :cond_3d

    .line 786
    const/4 v11, 0x0

    .line 791
    .restart local v11    # "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :goto_1f
    instance-of v0, v11, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    move/from16 v34, v0

    if-eqz v34, :cond_1

    .line 792
    check-cast v11, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    .end local v11    # "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    invoke-virtual {v11}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->showFailed()V

    goto/16 :goto_2

    .line 768
    .end local v10    # "var17":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v20    # "var27":I
    :cond_3b
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/Message;

    .line 769
    .restart local v9    # "var16":Lcom/vkcoffee/android/Message;
    iget v0, v9, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v21

    if-ne v0, v1, :cond_39

    .line 770
    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v9, Lcom/vkcoffee/android/Message;->sendFailed:Z

    goto/16 :goto_1c

    .line 781
    .end local v9    # "var16":Lcom/vkcoffee/android/Message;
    .restart local v10    # "var17":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .restart local v20    # "var27":I
    :cond_3c
    new-instance v34, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v35, 0x7f0802b5

    invoke-virtual/range {v34 .. v35}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    const v35, 0x7f0802b4

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    const v35, 0x7f08031e

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1e

    .line 788
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$4(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->getHeaderViewsCount()I

    move-result v35

    add-int v35, v35, v20

    invoke-virtual/range {v34 .. v35}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->findViewHolderForAdapterPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v11

    .restart local v11    # "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    goto :goto_1f

    .line 775
    .end local v11    # "var18":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :cond_3e
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1d

    .line 801
    .end local v10    # "var17":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v20    # "var27":I
    .end local v21    # "var28":I
    .end local v24    # "var30":Ljava/util/Iterator;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v34

    const v35, 0x77359400

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_3f

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$10(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 805
    :cond_3f
    const-string v34, "no_refresh_chat"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_1

    .line 806
    const-string v34, "reload_chats"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_46

    .line 807
    const-string v34, "reload_chats"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 808
    .local v7, "var14":Ljava/util/ArrayList;
    const/16 v28, 0x0

    .line 809
    .restart local v28    # "var4":Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 812
    .restart local v8    # "var15":Ljava/util/Iterator;
    :cond_40
    move/from16 v19, v28

    .line 813
    .local v19, "var26":I
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_42

    .line 823
    .end local v19    # "var26":I
    :goto_20
    if-nez v19, :cond_46

    .line 824
    const-string v34, "marked_as_read"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 825
    const-string v34, "marked_as_unread"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 826
    .restart local v3    # "var10":Ljava/util/ArrayList;
    const-string v34, "deleted"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 827
    .local v14, "var21":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 829
    .local v5, "var12":Ljava/util/Iterator;
    :cond_41
    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_43

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$24(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    goto/16 :goto_2

    .line 817
    .end local v3    # "var10":Ljava/util/ArrayList;
    .end local v5    # "var12":Ljava/util/Iterator;
    .end local v14    # "var21":Ljava/util/ArrayList;
    .restart local v19    # "var26":I
    :cond_42
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_40

    .line 818
    const/16 v19, 0x1

    .local v19, "var26":Z
    goto :goto_20

    .line 830
    .end local v19    # "var26":Z
    .restart local v3    # "var10":Ljava/util/ArrayList;
    .restart local v5    # "var12":Ljava/util/Iterator;
    .restart local v14    # "var21":Ljava/util/ArrayList;
    :cond_43
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/Message;

    .line 831
    .local v4, "var11":Lcom/vkcoffee/android/Message;
    iget v0, v4, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_44

    .line 832
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_21

    .line 834
    :cond_44
    iget v0, v4, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_45

    .line 835
    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v4, Lcom/vkcoffee/android/Message;->readState:Z

    .line 838
    :cond_45
    iget v0, v4, Lcom/vkcoffee/android/Message;->id:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_41

    .line 839
    const/16 v34, 0x0

    move/from16 v0, v34

    iput-boolean v0, v4, Lcom/vkcoffee/android/Message;->readState:Z

    goto :goto_21

    .line 850
    .end local v3    # "var10":Ljava/util/ArrayList;
    .end local v4    # "var11":Lcom/vkcoffee/android/Message;
    .end local v5    # "var12":Ljava/util/Iterator;
    .end local v7    # "var14":Ljava/util/ArrayList;
    .end local v8    # "var15":Ljava/util/Iterator;
    .end local v14    # "var21":Ljava/util/ArrayList;
    .end local v28    # "var4":Z
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$25(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$26(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$27(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$28(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$29(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/widget/ProgressBar;

    move-result-object v34

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$30(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    move-result-object v34

    const/16 v35, 0x8

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-static/range {v34 .. v35}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$31(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    goto/16 :goto_2

    .line 291
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5601c735 -> :sswitch_0
        -0x4a4586a4 -> :sswitch_1
        -0x21fc45f9 -> :sswitch_2
        -0x5d04b3e -> :sswitch_3
        -0x7cdee3 -> :sswitch_4
        0x1b0635c9 -> :sswitch_5
        0x1b7c6050 -> :sswitch_6
        0x212cafa8 -> :sswitch_7
        0x22d7a72c -> :sswitch_8
        0x44b5a336 -> :sswitch_9
        0x538e40a1 -> :sswitch_a
        0x70d614ed -> :sswitch_b
    .end sparse-switch

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
