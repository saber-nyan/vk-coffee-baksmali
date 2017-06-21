.class public Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MessagesGetLastActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "var1"    # I

    .prologue
    .line 13
    const-string v0, "users.get"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v0, "user_ids"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string v0, "fields"

    const-string v1, "online,sex,last_seen"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;
    .locals 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, "b":Z
    :try_start_0
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 23
    .local v4, "jsonObject2":Lorg/json/JSONObject;
    const-string v9, "last_seen"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 24
    const-string v9, "last_seen"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "platform"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 29
    .local v2, "int1":I
    :goto_0
    new-instance v6, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;

    invoke-direct {v6}, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;-><init>()V

    .line 31
    .local v6, "result":Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;
    const-string v9, "last_seen"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 32
    const-string v9, "last_seen"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "time"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 37
    .local v3, "int2":I
    :goto_1
    iput v2, v6, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    .line 38
    iput v3, v6, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->time:I

    .line 39
    invoke-static {v4}, Lcom/vkcoffee/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v9

    iput v9, v6, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->online:I

    .line 40
    const-string v9, "sex"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_0

    move v7, v8

    :cond_0
    iput-boolean v7, v6, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->f:Z

    .line 41
    const/4 v5, 0x0

    .line 43
    .local v5, "mobile":Z
    if-eq v2, v8, :cond_3

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    const/4 v7, 0x3

    if-eq v2, v7, :cond_3

    const/4 v7, 0x4

    if-eq v2, v7, :cond_3

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v7, 0x5

    if-eq v2, v7, :cond_3

    .line 51
    :goto_2
    iput-boolean v5, v6, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->mobile:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v2    # "int1":I
    .end local v3    # "int2":I
    .end local v4    # "jsonObject2":Lorg/json/JSONObject;
    .end local v5    # "mobile":Z
    .end local v6    # "result":Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;
    :goto_3
    return-object v6

    .line 27
    .restart local v4    # "jsonObject2":Lorg/json/JSONObject;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "int1":I
    goto :goto_0

    .line 35
    .restart local v6    # "result":Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "int2":I
    goto :goto_1

    .line 49
    .restart local v5    # "mobile":Z
    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    .line 54
    .end local v2    # "int1":I
    .end local v3    # "int2":I
    .end local v4    # "jsonObject2":Lorg/json/JSONObject;
    .end local v5    # "mobile":Z
    .end local v6    # "result":Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;

    move-result-object v0

    return-object v0
.end method
