.class public Lcom/vkcoffee/android/api/polls/PollsGetById;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PollsGetById.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/attachments/PollAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "pollID"    # I

    .prologue
    .line 13
    const-string/jumbo v0, "polls.getById"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/polls/PollsGetById;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "poll_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/PollAttachment;
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 20
    .local v0, "tmp":Lorg/json/JSONObject;
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "poll"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string/jumbo v2, "poll"

    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-static {v0}, Lcom/vkcoffee/android/attachments/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/PollAttachment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v0    # "tmp":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    const/4 v2, 0x0

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
    .line 10
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/polls/PollsGetById;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/PollAttachment;

    move-result-object v0

    return-object v0
.end method
