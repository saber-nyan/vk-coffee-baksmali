.class public Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MessagesGetDialogs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/DialogEntry;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 26
    const-string v0, "execute.getDialogsWithProfilesNewFixGroups"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/DialogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 34
    .local v2, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "p"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 36
    .local v1, "p":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 42
    .end local v0    # "i":I
    :cond_0
    const/4 v5, 0x0

    new-instance v6, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v6}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "a"

    invoke-static {v5, v6}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v5

    if-nez v5, :cond_2

    .line 44
    new-instance v5, Lcom/vkcoffee/android/data/VKList;

    invoke-direct {v5}, Lcom/vkcoffee/android/data/VKList;-><init>()V

    .line 121
    .end local v1    # "p":Lorg/json/JSONArray;
    .end local v2    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :goto_1
    return-object v5

    .line 38
    .restart local v0    # "i":I
    .restart local v1    # "p":Lorg/json/JSONArray;
    .restart local v2    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_1
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 39
    .local v3, "up":Lcom/vkcoffee/android/UserProfile;
    iget v5, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "i":I
    .end local v3    # "up":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    new-instance v5, Lcom/vkcoffee/android/data/VKList;

    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "a"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs$1;

    invoke-direct {v7, p0, v2}, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs$1;-><init>(Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;Landroid/util/SparseArray;)V

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 119
    .end local v1    # "p":Lorg/json/JSONArray;
    .end local v2    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v4

    .line 120
    .local v4, "x":Ljava/lang/Throwable;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    const/4 v5, 0x0

    goto :goto_1
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method
