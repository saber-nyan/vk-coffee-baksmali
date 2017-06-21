.class public Lcom/vkcoffee/android/api/market/MarketAddComment;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MarketAddComment.java"


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
.method public constructor <init>(IILjava/lang/String;Ljava/util/List;ZI)V
    .locals 7
    .param p1, "ownerId"    # I
    .param p2, "itemId"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p5, "fromGroup"    # Z
    .param p6, "replyToComment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p4, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const-string/jumbo v4, "market.createComment"

    invoke-direct {p0, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v4, "owner_id"

    invoke-virtual {p0, v4, p1}, Lcom/vkcoffee/android/api/market/MarketAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    const-string/jumbo v5, "item_id"

    invoke-virtual {v4, v5, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    const-string/jumbo v5, "message"

    invoke-virtual {v4, v5, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    if-eqz p5, :cond_0

    .line 20
    const-string/jumbo v4, "from_group"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/vkcoffee/android/api/market/MarketAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    :cond_0
    if-eqz p4, :cond_5

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .local v2, "attachments":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 25
    .local v3, "firstTime":Z
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/Attachment;

    .line 26
    .local v1, "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v5, v1, Lcom/vkcoffee/android/attachments/StickerAttachment;

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 27
    check-cast v0, Lcom/vkcoffee/android/attachments/StickerAttachment;

    .line 28
    .local v0, "att":Lcom/vkcoffee/android/attachments/StickerAttachment;
    const-string/jumbo v5, "sticker_id"

    iget v6, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    invoke-virtual {p0, v5, v6}, Lcom/vkcoffee/android/api/market/MarketAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    iget-object v5, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 30
    const-string/jumbo v5, "sticker_referrer"

    iget-object v6, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/vkcoffee/android/api/market/MarketAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 33
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/StickerAttachment;
    :cond_2
    if-eqz v3, :cond_3

    .line 34
    const/4 v3, 0x0

    .line 38
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 36
    :cond_3
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 41
    .end local v1    # "attachment":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_4
    const-string/jumbo v4, "attachments"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/vkcoffee/android/api/market/MarketAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 43
    .end local v2    # "attachments":Ljava/lang/StringBuilder;
    .end local v3    # "firstTime":Z
    :cond_5
    if-lez p6, :cond_6

    .line 44
    const-string/jumbo v4, "reply_to_comment"

    invoke-virtual {p0, v4, p6}, Lcom/vkcoffee/android/api/market/MarketAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 46
    :cond_6
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    :try_start_0
    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 53
    const/4 v1, 0x0

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
    .line 14
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/market/MarketAddComment;->parse(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
