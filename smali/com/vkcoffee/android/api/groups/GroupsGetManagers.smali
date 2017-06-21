.class public Lcom/vkcoffee/android/api/groups/GroupsGetManagers;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GroupsGetManagers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 22
    const-string/jumbo v0, "execute.getGroupManagers"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 23
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "online,photo_50,photo_200,photo_100,first_name_acc,last_name_acc"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetManagers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetManagers;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    const-string/jumbo v0, "filter"

    const-string/jumbo v1, "managers"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetManagers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    const-string/jumbo v0, "sort"

    const-string/jumbo v1, "time_desc"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetManagers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
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
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    const-string/jumbo v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "contacts"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 32
    .local v3, "jcontacts":Lorg/json/JSONArray;
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 33
    .local v0, "contacts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 35
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 36
    .local v2, "jc":Lorg/json/JSONObject;
    const-string/jumbo v5, "user_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 34
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const-string/jumbo v5, "user_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "desc"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 53
    .end local v0    # "contacts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "jc":Lorg/json/JSONObject;
    .end local v3    # "jcontacts":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 54
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    const/4 v5, 0x0

    .end local v4    # "x":Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 42
    .restart local v0    # "contacts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v3    # "jcontacts":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    new-instance v5, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "managers"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/vkcoffee/android/api/groups/GroupsGetManagers$1;

    invoke-direct {v7, p0, v0}, Lcom/vkcoffee/android/api/groups/GroupsGetManagers$1;-><init>(Lcom/vkcoffee/android/api/groups/GroupsGetManagers;Landroid/util/SparseArray;)V

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetManagers;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method
