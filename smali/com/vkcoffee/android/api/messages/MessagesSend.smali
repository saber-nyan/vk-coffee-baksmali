.class public Lcom/vkcoffee/android/api/messages/MessagesSend;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MessagesSend.java"


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
.method public constructor <init>(ILcom/vkcoffee/android/Message;Ljava/util/List;Ljava/util/List;Lcom/vkcoffee/android/attachments/GeoAttachment;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "message"    # Lcom/vkcoffee/android/Message;
    .param p5, "location"    # Lcom/vkcoffee/android/attachments/GeoAttachment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vkcoffee/android/Message;",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/vkcoffee/android/attachments/GeoAttachment;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "attachments":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p4, "fwdMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const v6, 0x77359400

    .line 18
    const-string/jumbo v3, "messages.send"

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v1, p2, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    .line 21
    .local v1, "msg":Ljava/lang/String;
    const-string/jumbo v3, "device"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/messages/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    if-ge p1, v6, :cond_7

    .line 23
    const-string/jumbo v3, "peer_id"

    invoke-virtual {p0, v3, p1}, Lcom/vkcoffee/android/api/messages/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 28
    const-string/jumbo v3, "message"

    invoke-virtual {p0, v3, v1}, Lcom/vkcoffee/android/api/messages/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 30
    :cond_0
    if-eqz p5, :cond_1

    .line 31
    const-string/jumbo v3, "lat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p5, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/messages/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    const-string/jumbo v4, "long"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p5, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 34
    :cond_1
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 35
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "att":Ljava/lang/Object;
    instance-of v4, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 38
    check-cast v2, Lcom/vkcoffee/android/attachments/StickerAttachment;

    .line 39
    .local v2, "sa":Lcom/vkcoffee/android/attachments/StickerAttachment;
    const-string/jumbo v3, "sticker_id"

    iget v4, v2, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/messages/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 41
    iget-object v3, v2, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 42
    const-string/jumbo v3, "sticker_referrer"

    iget-object v4, v2, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/messages/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 45
    :cond_3
    invoke-interface {p3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    .end local v0    # "att":Ljava/lang/Object;
    .end local v2    # "sa":Lcom/vkcoffee/android/attachments/StickerAttachment;
    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 52
    const-string/jumbo v3, "attachment"

    const-string/jumbo v4, ","

    invoke-static {v4, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/messages/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 54
    :cond_5
    if-eqz p4, :cond_6

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 55
    const-string/jumbo v3, "forward_messages"

    const-string/jumbo v4, ","

    invoke-static {v4, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/messages/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 58
    :cond_6
    invoke-virtual {p2}, Lcom/vkcoffee/android/Message;->generateRandomId()V

    .line 59
    const-string/jumbo v3, "random_id"

    iget v4, p2, Lcom/vkcoffee/android/Message;->randomId:I

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/messages/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 60
    return-void

    .line 25
    :cond_7
    const-string/jumbo v3, "chat_id"

    sub-int v4, p1, v6

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/messages/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 64
    :try_start_0
    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "x":Ljava/lang/Exception;
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
    .line 15
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesSend;->parse(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
