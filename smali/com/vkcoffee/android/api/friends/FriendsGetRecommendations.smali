.class public Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "FriendsGetRecommendations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/VKFromList",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 17
    const-string/jumbo v0, "friends.getRecommendations"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    const-string/jumbo v0, "start_from"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    :cond_0
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKFromList;
    .locals 5
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKFromList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v2, Lcom/vkcoffee/android/data/VKFromList;

    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "next_from"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/data/VKFromList;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, "res":Lcom/vkcoffee/android/data/VKFromList;, "Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "items"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 28
    .local v1, "ja":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 29
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/data/VKFromList;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-object v2
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKFromList;

    move-result-object v0

    return-object v0
.end method
