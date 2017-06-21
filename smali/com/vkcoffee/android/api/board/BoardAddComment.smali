.class public Lcom/vkcoffee/android/api/board/BoardAddComment;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "BoardAddComment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "gid"    # I
    .param p2, "tid"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "fromGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p4, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const/4 v7, -0x1

    .line 16
    if-ne p2, v7, :cond_2

    const-string/jumbo v4, "board.addTopic"

    :goto_0
    invoke-direct {p0, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string/jumbo v4, "group_id"

    invoke-virtual {p0, v4, p1}, Lcom/vkcoffee/android/api/board/BoardAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    const-string/jumbo v5, "topic_id"

    invoke-virtual {v4, v5, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    const-string/jumbo v5, "text"

    invoke-virtual {v4, v5, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    if-eqz p6, :cond_0

    .line 19
    const-string/jumbo v4, "from_group"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/vkcoffee/android/api/board/BoardAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    :cond_0
    if-eqz p4, :cond_6

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .local v2, "attachments":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 24
    .local v3, "firstTime":Z
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/Attachment;

    .line 25
    .local v1, "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v5, v1, Lcom/vkcoffee/android/attachments/StickerAttachment;

    if-eqz v5, :cond_3

    move-object v0, v1

    .line 26
    check-cast v0, Lcom/vkcoffee/android/attachments/StickerAttachment;

    .line 27
    .local v0, "att":Lcom/vkcoffee/android/attachments/StickerAttachment;
    const-string/jumbo v5, "sticker_id"

    iget v6, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    invoke-virtual {p0, v5, v6}, Lcom/vkcoffee/android/api/board/BoardAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    iget-object v5, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 29
    const-string/jumbo v5, "sticker_referrer"

    iget-object v6, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/vkcoffee/android/api/board/BoardAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 16
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/StickerAttachment;
    .end local v1    # "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v2    # "attachments":Ljava/lang/StringBuilder;
    .end local v3    # "firstTime":Z
    :cond_2
    const-string/jumbo v4, "board.addComment"

    goto :goto_0

    .line 32
    .restart local v1    # "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v2    # "attachments":Ljava/lang/StringBuilder;
    .restart local v3    # "firstTime":Z
    :cond_3
    if-eqz v3, :cond_4

    .line 33
    const/4 v3, 0x0

    .line 37
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 35
    :cond_4
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 40
    .end local v1    # "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_5
    const-string/jumbo v4, "attachments"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/vkcoffee/android/api/board/BoardAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 42
    .end local v2    # "attachments":Ljava/lang/StringBuilder;
    .end local v3    # "firstTime":Z
    :cond_6
    if-ne p2, v7, :cond_7

    .line 43
    const-string/jumbo v4, "title"

    invoke-virtual {p0, v4, p5}, Lcom/vkcoffee/android/api/board/BoardAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 45
    :cond_7
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 49
    :try_start_0
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 52
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/board/BoardAddComment;->parse(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
