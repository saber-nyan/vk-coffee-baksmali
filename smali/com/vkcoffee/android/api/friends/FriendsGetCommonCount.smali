.class public Lcom/vkcoffee/android/api/friends/FriendsGetCommonCount;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "FriendsGetCommonCount.java"


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
.method public constructor <init>(I)V
    .locals 2
    .param p1, "user_id"    # I

    .prologue
    .line 14
    const-string/jumbo v0, "users.get"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "common_count"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsGetCommonCount;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "user_ids"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/friends/FriendsGetCommonCount;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 4
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 21
    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 22
    .local v0, "response":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 24
    .local v1, "user":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 25
    const-string/jumbo v2, "common_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 28
    .end local v1    # "user":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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
    .line 12
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/friends/FriendsGetCommonCount;->parse(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
