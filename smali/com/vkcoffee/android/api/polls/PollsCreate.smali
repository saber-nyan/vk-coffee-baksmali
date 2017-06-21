.class public Lcom/vkcoffee/android/api/polls/PollsCreate;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PollsCreate.java"


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
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;IZ)V
    .locals 2
    .param p1, "question"    # Ljava/lang/String;
    .param p3, "oid"    # I
    .param p4, "anonym"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "polls.create"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string/jumbo v0, "question"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/polls/PollsCreate;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v1, "is_anonymous"

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/polls/PollsCreate;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/polls/PollsCreate;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    const-string/jumbo v0, "add_answers"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/polls/PollsCreate;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/PollAttachment;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    :try_start_0
    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 26
    .local v0, "r":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .local v1, "tmp":Lorg/json/JSONObject;
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "poll"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string/jumbo v3, "poll"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-static {v1}, Lcom/vkcoffee/android/attachments/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/PollAttachment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "r":Lorg/json/JSONObject;
    .end local v1    # "tmp":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 30
    :catch_0
    move-exception v2

    .line 31
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    const/4 v3, 0x0

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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/polls/PollsCreate;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/PollAttachment;

    move-result-object v0

    return-object v0
.end method
