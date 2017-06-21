.class public Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;
.super Ljava/lang/Object;
.source "MessageListItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
    }
.end annotation


# static fields
.field public static final TIME_STEP:I = 0x1c20


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static buildFwdItems(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Ljava/util/List;Ljava/util/Set;Z)Ljava/util/List;
    .locals 10
    .param p0, "provider"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
    .param p1, "message"    # Lcom/vkcoffee/android/Message;
    .param p3    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "hasTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;",
            "Lcom/vkcoffee/android/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Message$FwdMessage;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, "fwdMessages":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Message$FwdMessage;>;"
    .local p3, "fwdUidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->buildFwdItemsInner(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Ljava/util/List;Ljava/util/Set;ILjava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 276
    .local v8, "listItems":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 277
    .local v9, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_2

    .line 278
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 279
    .local v7, "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    if-lez v6, :cond_0

    add-int/lit8 v0, v6, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    :goto_1
    iput v0, v7, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevelLast:I

    .line 280
    add-int/lit8 v0, v9, -0x1

    if-ge v6, v0, :cond_1

    add-int/lit8 v0, v6, 0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    :goto_2
    iput v0, v7, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevelNext:I

    .line 277
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 282
    .end local v7    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 283
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    if-nez p4, :cond_3

    const/4 v1, 0x1

    :goto_3
    iput v1, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    .line 288
    :goto_4
    return-object v8

    .line 283
    :cond_3
    const/4 v1, 0x4

    goto :goto_3

    .line 285
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    if-nez p4, :cond_5

    const/4 v1, 0x2

    :goto_5
    iput v1, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    .line 286
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    const/4 v1, 0x4

    iput v1, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    goto :goto_4

    .line 285
    :cond_5
    const/4 v1, 0x3

    goto :goto_5
.end method

.method private static buildFwdItemsInner(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Ljava/util/List;Ljava/util/Set;ILjava/util/List;)Ljava/util/List;
    .locals 12
    .param p0, "provider"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
    .param p1, "message"    # Lcom/vkcoffee/android/Message;
    .param p3    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;",
            "Lcom/vkcoffee/android/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Message$FwdMessage;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "fwdMessages":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Message$FwdMessage;>;"
    .local p3, "fwdUidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    if-nez p5, :cond_0

    new-instance p5, Ljava/util/ArrayList;

    .end local p5    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    invoke-direct/range {p5 .. p5}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .restart local p5    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_5

    .line 299
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/Message$FwdMessage;

    .line 300
    .local v11, "m":Lcom/vkcoffee/android/Message$FwdMessage;
    new-instance v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-direct {v9, p1, v11}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;-><init>(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/Message$FwdMessage;)V

    .line 301
    .local v9, "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    move/from16 v0, p4

    iput v0, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    .line 302
    const/4 v1, 0x3

    iput v1, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    .line 304
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    iget-object v1, v11, Lcom/vkcoffee/android/Message$FwdMessage;->attachments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 305
    iget-object v1, v11, Lcom/vkcoffee/android/Message$FwdMessage;->attachments:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/attachments/Attachment;

    .line 306
    .local v7, "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v1, v7, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    if-eqz v1, :cond_1

    .line 307
    check-cast v7, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    .end local v7    # "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/vkcoffee/android/attachments/SnippetAttachment;->forceSmall:Z

    .line 304
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 311
    :cond_2
    invoke-static {v9, p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processZhukovLayout(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;)V

    .line 313
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    if-eqz p3, :cond_3

    .line 315
    iget v1, v11, Lcom/vkcoffee/android/Message$FwdMessage;->sender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_3
    iget-object v1, v11, Lcom/vkcoffee/android/Message$FwdMessage;->fwdMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0xa

    move/from16 v0, p4

    if-gt v0, v1, :cond_4

    .line 318
    iget-object v3, v11, Lcom/vkcoffee/android/Message$FwdMessage;->fwdMessages:Ljava/util/List;

    add-int/lit8 v5, p4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->buildFwdItemsInner(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Ljava/util/List;Ljava/util/Set;ILjava/util/List;)Ljava/util/List;

    .line 298
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 321
    .end local v9    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v10    # "j":I
    .end local v11    # "m":Lcom/vkcoffee/android/Message$FwdMessage;
    :cond_5
    return-object p5
.end method

.method public static buildItems(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 25
    .param p0, "provider"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Message;>;"
    .local p2, "fwdUidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v18, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_0

    .line 267
    .end local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    :goto_0
    return-object v18

    .line 183
    .restart local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    :cond_0
    const/4 v10, 0x0

    .line 184
    .local v10, "lastMessageTime":I
    const/4 v15, 0x0

    .line 187
    .local v15, "prevDay":I
    const/16 v16, 0x1

    .line 188
    .local v16, "prevReadState":Z
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkcoffee/android/Message;

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/Message;->readState:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkcoffee/android/Message;

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/Message;->readState:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    const/4 v13, 0x1

    .line 190
    .local v13, "needDivider":Z
    :goto_1
    const/4 v11, 0x0

    .line 191
    .local v11, "lastShowedTime":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkcoffee/android/Message;

    .line 192
    .local v12, "m":Lcom/vkcoffee/android/Message;
    new-instance v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-direct {v9, v12}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;-><init>(Lcom/vkcoffee/android/Message;)V

    .line 194
    .local v9, "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    iget-boolean v0, v12, Lcom/vkcoffee/android/Message;->out:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    iget v0, v12, Lcom/vkcoffee/android/Message;->sender:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;->getChatUser(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v17

    .local v17, "profile":Lcom/vkcoffee/android/UserProfile;
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 195
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setImageUrl(Ljava/lang/String;)V

    .line 198
    .end local v17    # "profile":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v12, v9, v1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->setTextFromMessage(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Ljava/util/Set;)V

    .line 200
    iget-object v0, v12, Lcom/vkcoffee/android/Message;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    iget-object v0, v12, Lcom/vkcoffee/android/Message;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    check-cast v20, Landroid/text/Spannable;

    const/16 v22, 0x0

    iget-object v0, v12, Lcom/vkcoffee/android/Message;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    .line 201
    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    const-class v24, Landroid/text/style/URLSpan;

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/URLSpan;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_b

    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    iput-boolean v0, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->hasLinks:Z

    .line 202
    iget-object v0, v12, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setAttachments(Ljava/util/List;)V

    .line 203
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    .line 204
    move-object/from16 v0, p0

    invoke-static {v9, v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processZhukovLayout(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;)V

    .line 206
    if-eqz v13, :cond_3

    if-eqz v16, :cond_3

    iget-boolean v0, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->readState:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    iget-boolean v0, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isOut:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    invoke-interface/range {p0 .. p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;->isJumpedToEnd()Z

    move-result v20

    if-nez v20, :cond_3

    .line 207
    new-instance v19, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-direct/range {v19 .. v19}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;-><init>()V

    .line 208
    .local v19, "srv":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    const/16 v20, 0x6

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    .line 209
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;->setHasSeparator(Z)V

    .line 214
    .end local v19    # "srv":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    :cond_3
    iget v0, v12, Lcom/vkcoffee/android/Message;->time:I

    move/from16 v20, v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    add-int v6, v20, v22

    .line 215
    .local v6, "currentMessageTime":I
    const v20, 0x15180

    div-int v20, v6, v20

    move/from16 v0, v20

    if-eq v0, v15, :cond_c

    .line 216
    const v20, 0x15180

    div-int v15, v6, v20

    .line 217
    new-instance v19, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-direct/range {v19 .. v19}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;-><init>()V

    .line 218
    .restart local v19    # "srv":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    .line 219
    iget v11, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    move-object/from16 v0, v19

    iput v11, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    .line 220
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->groupMessagesTime:I

    .line 221
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v19    # "srv":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    :cond_4
    :goto_4
    move v10, v6

    .line 230
    iput v11, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->groupMessagesTime:I

    .line 233
    const/4 v7, 0x0

    .line 234
    .local v7, "gift":Lcom/vkcoffee/android/attachments/GiftAttachment;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    iget-object v0, v12, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    .line 235
    iget-object v0, v12, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/attachments/Attachment;

    .line 236
    .local v4, "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v4, Lcom/vkcoffee/android/attachments/GiftAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object v7, v4

    .line 237
    check-cast v7, Lcom/vkcoffee/android/attachments/GiftAttachment;

    .line 245
    .end local v4    # "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_5
    if-eqz v7, :cond_6

    .line 246
    const/16 v20, 0x7

    move/from16 v0, v20

    iput v0, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    .line 247
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v9, v5}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setAttachments(Ljava/util/List;)V

    .line 252
    .end local v5    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    :cond_6
    iget-boolean v0, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->readState:Z

    move/from16 v16, v0

    .line 254
    iget-object v0, v12, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_7

    iget-object v0, v12, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-gtz v20, :cond_7

    iget-object v0, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    :cond_7
    const/4 v14, 0x1

    .local v14, "parentIsAdded":Z
    :goto_6
    if-eqz v14, :cond_8

    .line 255
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_8
    iget v0, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v20, v0

    const/16 v22, 0x7

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 258
    iget-boolean v0, v12, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    const/16 v20, 0x5

    :goto_7
    move/from16 v0, v20

    iput v0, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    .line 260
    :cond_9
    iget-object v0, v12, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_1

    .line 261
    const/16 v20, 0x2

    move/from16 v0, v20

    iput v0, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    .line 262
    iget-object v0, v12, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v12, v1, v2, v14}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->buildFwdItems(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Ljava/util/List;Ljava/util/Set;Z)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 188
    .end local v6    # "currentMessageTime":I
    .end local v7    # "gift":Lcom/vkcoffee/android/attachments/GiftAttachment;
    .end local v8    # "i":I
    .end local v9    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v11    # "lastShowedTime":I
    .end local v12    # "m":Lcom/vkcoffee/android/Message;
    .end local v13    # "needDivider":Z
    .end local v14    # "parentIsAdded":Z
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 201
    .restart local v9    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .restart local v11    # "lastShowedTime":I
    .restart local v12    # "m":Lcom/vkcoffee/android/Message;
    .restart local v13    # "needDivider":Z
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 222
    .restart local v6    # "currentMessageTime":I
    :cond_c
    sub-int v20, v6, v10

    const/16 v22, 0x1c20

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 223
    new-instance v19, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-direct/range {v19 .. v19}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;-><init>()V

    .line 224
    .restart local v19    # "srv":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    .line 225
    iget v11, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    move-object/from16 v0, v19

    iput v11, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    .line 226
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->groupMessagesTime:I

    .line 227
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 241
    .end local v19    # "srv":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .restart local v4    # "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v7    # "gift":Lcom/vkcoffee/android/attachments/GiftAttachment;
    .restart local v8    # "i":I
    :cond_d
    instance-of v0, v4, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 242
    check-cast v4, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    .end local v4    # "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v4, Lcom/vkcoffee/android/attachments/SnippetAttachment;->forceSmall:Z

    .line 234
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 254
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 258
    .restart local v14    # "parentIsAdded":Z
    :cond_10
    const/16 v20, 0x1

    goto :goto_7

    .line 266
    .end local v6    # "currentMessageTime":I
    .end local v7    # "gift":Lcom/vkcoffee/android/attachments/GiftAttachment;
    .end local v8    # "i":I
    .end local v9    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v12    # "m":Lcom/vkcoffee/android/Message;
    .end local v14    # "parentIsAdded":Z
    :cond_11
    invoke-interface/range {p0 .. p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;->onBuildMessage()V

    .line 267
    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->processItemIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v18, v20

    goto/16 :goto_0
.end method

.method public static fixTimes(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    const/4 v2, 0x0

    .line 153
    .local v2, "prevDay":I
    const/4 v1, 0x0

    .line 154
    .local v1, "lastMessageTime":I
    const/4 v3, 0x0

    .line 155
    .local v3, "prevIsDate":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 156
    .local v0, "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isTime()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    iget v6, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    if-eq v6, v2, :cond_0

    iget v6, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    add-int/lit16 v6, v6, -0x1c20

    if-le v6, v1, :cond_0

    if-eqz v3, :cond_1

    .line 159
    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    iget v2, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    .line 162
    const/4 v3, 0x1

    .line 166
    :goto_1
    iget v1, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    .line 167
    goto :goto_0

    .line 164
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 168
    .end local v0    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    :cond_3
    invoke-interface {p0, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 169
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isTime()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 170
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    return v5
.end method

.method private static prepareBoldText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<"

    const-string/jumbo v2, "&lt;"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static processServiceAction(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)[I
    .locals 10
    .param p0, "provider"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
    .param p1, "message"    # Lcom/vkcoffee/android/Message;
    .param p2, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 49
    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processServiceActionInner(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)[I

    move-result-object v5

    .line 51
    .local v5, "uids":[I
    if-eqz v5, :cond_0

    iget-object v6, p2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_0

    .line 52
    iget-object v6, p2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    iget-object v7, p2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Landroid/text/style/StyleSpan;

    invoke-interface {v6, v9, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 53
    .local v3, "spans":[Ljava/lang/Object;
    const-string/jumbo v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Len = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 55
    array-length v6, v5

    if-lt v1, v6, :cond_1

    .line 69
    .end local v1    # "i":I
    .end local v3    # "spans":[Ljava/lang/Object;
    :cond_0
    return-object v5

    .line 58
    .restart local v1    # "i":I
    .restart local v3    # "spans":[Ljava/lang/Object;
    :cond_1
    iget-object v6, p2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    aget-object v7, v3, v1

    invoke-interface {v6, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 59
    .local v4, "start":I
    iget-object v6, p2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    aget-object v7, v3, v1

    invoke-interface {v6, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 60
    .local v0, "end":I
    new-instance v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$1;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vkontakte://profile/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$1;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, "span":Landroid/text/style/URLSpan;
    iget-object v6, p2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-interface {v6, v2, v4, v0, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static processServiceActionInner(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)[I
    .locals 9
    .param p0, "provider"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
    .param p1, "message"    # Lcom/vkcoffee/android/Message;
    .param p2, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 74
    iget-object v1, p1, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "action":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :goto_0
    return-object v0

    .line 78
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 79
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v1, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 95
    const-string/jumbo v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown message action "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :sswitch_0
    const-string/jumbo v2, "chat_photo_update"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "chat_photo_remove"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "chat_create"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "chat_title_update"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "chat_invite_user"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "chat_kick_user"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    .line 81
    :pswitch_0
    const v4, 0x7f0800d0

    const v5, 0x7f0800d1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processServiceStandardAction(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Landroid/content/res/Resources;IIZ)[I

    move-result-object v0

    goto :goto_0

    .line 83
    :pswitch_1
    const v4, 0x7f0800ce

    const v5, 0x7f0800cf

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processServiceStandardAction(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Landroid/content/res/Resources;IIZ)[I

    move-result-object v0

    goto/16 :goto_0

    .line 85
    :pswitch_2
    const v4, 0x7f080472

    const v5, 0x7f080473

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processServiceStandardAction(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Landroid/content/res/Resources;IIZ)[I

    move-result-object v0

    goto/16 :goto_0

    .line 87
    :pswitch_3
    const v4, 0x7f080474

    const v5, 0x7f080475

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processServiceStandardAction(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Landroid/content/res/Resources;IIZ)[I

    move-result-object v0

    goto/16 :goto_0

    .line 89
    :pswitch_4
    const v4, 0x7f080476

    const v5, 0x7f080477

    const v6, 0x7f08047c

    const v7, 0x7f08047d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processServiceKickInviteChatUser(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Landroid/content/res/Resources;IIII)[I

    move-result-object v0

    goto/16 :goto_0

    .line 92
    :pswitch_5
    const v4, 0x7f080478

    const v5, 0x7f080479

    const v6, 0x7f08047a

    const v7, 0x7f08047b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processServiceKickInviteChatUser(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Landroid/content/res/Resources;IIII)[I

    move-result-object v0

    goto/16 :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        -0x19bedf26 -> :sswitch_4
        -0xc11b9e9 -> :sswitch_3
        0xc3825fd -> :sswitch_5
        0x260dc0b8 -> :sswitch_1
        0x2bc300fd -> :sswitch_0
        0x631317c3 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static processServiceKickInviteChatUser(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Landroid/content/res/Resources;IIII)[I
    .locals 8
    .param p0, "provider"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
    .param p1, "message"    # Lcom/vkcoffee/android/Message;
    .param p2, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "resF"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5, "resM"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6, "resFSelf"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p7, "resMSelf"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    iget-object v3, p1, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "action_mid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 116
    .local v2, "uid":I
    iget v3, p1, Lcom/vkcoffee/android/Message;->sender:I

    invoke-interface {p0, v3}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;->getChatUser(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v1

    .line 117
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget v3, p1, Lcom/vkcoffee/android/Message;->sender:I

    if-ne v2, v3, :cond_1

    .line 118
    iget-boolean v3, v1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v3, :cond_0

    .end local p6    # "resFSelf":I
    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->prepareBoldText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p3, p6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    iput-object v3, p2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    .line 119
    new-array v3, v6, [I

    iget v4, p1, Lcom/vkcoffee/android/Message;->sender:I

    aput v4, v3, v5

    .line 128
    .end local p4    # "resF":I
    :goto_1
    return-object v3

    .restart local p4    # "resF":I
    .restart local p6    # "resFSelf":I
    :cond_0
    move p6, p7

    .line 118
    goto :goto_0

    .line 122
    :cond_1
    iget-object v3, p1, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "action_email"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    iget-object v3, p1, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "action_email"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "name":Ljava/lang/String;
    :goto_2
    iget-boolean v3, v1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v3, :cond_3

    .end local p4    # "resF":I
    :goto_3
    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->prepareBoldText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->prepareBoldText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p3, p4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    iput-object v3, p2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    .line 128
    new-array v3, v7, [I

    iget v4, p1, Lcom/vkcoffee/android/Message;->sender:I

    aput v4, v3, v5

    aput v2, v3, v6

    goto :goto_1

    .line 125
    .end local v0    # "name":Ljava/lang/String;
    .restart local p4    # "resF":I
    :cond_2
    invoke-interface {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;->getUserName(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_2

    :cond_3
    move p4, p5

    .line 127
    goto :goto_3
.end method

.method private static processServiceStandardAction(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Landroid/content/res/Resources;IIZ)[I
    .locals 6
    .param p0, "provider"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
    .param p1, "message"    # Lcom/vkcoffee/android/Message;
    .param p2, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "resF"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5, "resM"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6, "showActionText"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    iget v1, p1, Lcom/vkcoffee/android/Message;->sender:I

    invoke-interface {p0, v1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;->getChatUser(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v0

    .line 103
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    if-eqz p6, :cond_1

    .line 104
    iget-boolean v1, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v1, :cond_0

    .end local p4    # "resF":I
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->prepareBoldText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p1, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "action_text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->prepareBoldText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p3, p4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    .line 108
    :goto_1
    new-array v1, v5, [I

    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    aput v2, v1, v4

    return-object v1

    .restart local p4    # "resF":I
    :cond_0
    move p4, p5

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    iget-boolean v1, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v1, :cond_2

    .end local p4    # "resF":I
    :goto_2
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->prepareBoldText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p3, p4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .restart local p4    # "resF":I
    :cond_2
    move p4, p5

    goto :goto_2
.end method

.method public static processZhukovLayout(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;)V
    .locals 4
    .param p0, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .param p1, "provider"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;

    .prologue
    .line 325
    invoke-interface {p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;->getContentWidth()I

    move-result v1

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 326
    .local v0, "sz":I
    const/high16 v1, 0x42fc0000    # 126.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    sub-int v1, v0, v1

    iget v2, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    mul-int/2addr v2, v3

    sub-int v2, v1, v2

    iget v1, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 327
    :goto_0
    sub-int v1, v2, v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateAttachments()Ljava/util/List;

    move-result-object v2

    .line 326
    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/ZhukovLayout;->processThumbs(IILjava/util/List;)V

    .line 328
    return-void

    .line 326
    :cond_0
    const/high16 v1, 0x40c00000    # 6.0f

    .line 327
    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    goto :goto_0
.end method

.method public static processZhukovLayout(Ljava/util/List;Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-interface {p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;->getContentWidth()I

    move-result v1

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 332
    .local v0, "sz":I
    const/high16 v1, 0x42fc0000    # 126.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {v1, v0, p0}, Lcom/vkcoffee/android/ZhukovLayout;->processThumbs(IILjava/util/List;)V

    .line 333
    return-void
.end method

.method private static setTextFromMessage(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Ljava/util/Set;)V
    .locals 5
    .param p0, "provider"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
    .param p1, "message"    # Lcom/vkcoffee/android/Message;
    .param p2, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .param p3    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;",
            "Lcom/vkcoffee/android/Message;",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p3, "fwdUidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-boolean v2, p1, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processServiceAction(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)[I

    move-result-object v1

    .line 140
    .local v1, "uids":[I
    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 141
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 142
    .local v0, "id":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "id":I
    .end local v1    # "uids":[I
    :cond_0
    iget-object v2, p1, Lcom/vkcoffee/android/Message;->displayableText:Ljava/lang/CharSequence;

    iput-object v2, p2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    .line 148
    :cond_1
    return-void
.end method
