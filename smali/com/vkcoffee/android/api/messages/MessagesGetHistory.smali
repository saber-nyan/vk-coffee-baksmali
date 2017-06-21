.class public Lcom/vkcoffee/android/api/messages/MessagesGetHistory;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MessagesGetHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;
    }
.end annotation


# direct methods
.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "msgID"    # I

    .prologue
    .line 20
    const-string/jumbo v0, "messages.getHistory"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "peer_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistory;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_sizes"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "first_name,last_name,photo_100,photo_50"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistory;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    if-lez p4, :cond_0

    if-gtz p2, :cond_0

    .line 24
    const-string/jumbo v0, "start_message_id"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/messages/MessagesGetHistory;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    :try_start_0
    const-string/jumbo v4, "response"

    invoke-static {p1, v4}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v0, v4, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 31
    .local v0, "a":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 32
    iget-object v4, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistory;->callback:Lcom/vkcoffee/android/api/Callback;

    if-eqz v4, :cond_0

    .line 33
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    aput-object v5, v2, v4

    .line 51
    .end local v0    # "a":Lorg/json/JSONArray;
    :goto_0
    return-object v2

    .line 36
    .restart local v0    # "a":Lorg/json/JSONArray;
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$1;-><init>(Lcom/vkcoffee/android/api/messages/MessagesGetHistory;)V

    invoke-direct {v1, v4, v5}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V

    .line 42
    .local v1, "msgs":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Message;>;"
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 43
    new-instance v2, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;

    invoke-direct {v2}, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;-><init>()V

    .line 44
    .local v2, "res":Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;
    iput-object v1, v2, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->msgs:Lcom/vkcoffee/android/data/VKList;

    .line 45
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "skipped"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->offset:I

    .line 46
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "unread"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->unread:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "msgs":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Message;>;"
    .end local v2    # "res":Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;
    :catch_0
    move-exception v3

    .line 49
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    const/4 v2, 0x0

    goto :goto_0
.end method
