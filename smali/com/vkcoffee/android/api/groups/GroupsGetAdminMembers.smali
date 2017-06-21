.class public Lcom/vkcoffee/android/api/groups/GroupsGetAdminMembers;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GroupsGetAdminMembers.java"


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
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "filter"    # Ljava/lang/String;
    .param p5, "fields"    # Ljava/lang/String;
    .param p6, "sort"    # Ljava/lang/String;
    .param p7, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string/jumbo v0, "execute.getAdminGroupMembers"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "fields"

    invoke-virtual {p0, v0, p5}, Lcom/vkcoffee/android/api/groups/GroupsGetAdminMembers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetAdminMembers;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    if-eqz p4, :cond_0

    .line 24
    const-string/jumbo v0, "filter"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/groups/GroupsGetAdminMembers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    :cond_0
    if-eqz p6, :cond_1

    .line 27
    const-string/jumbo v0, "sort"

    invoke-virtual {p0, v0, p6}, Lcom/vkcoffee/android/api/groups/GroupsGetAdminMembers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    :cond_1
    if-eqz p7, :cond_2

    .line 30
    const-string/jumbo v0, "q"

    invoke-virtual {p0, v0, p7}, Lcom/vkcoffee/android/api/groups/GroupsGetAdminMembers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 32
    :cond_2
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 14
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
    .line 36
    :try_start_0
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 37
    .local v7, "roles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 38
    .local v8, "titles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "admins"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 39
    .local v3, "jadmins":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 40
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 41
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    .local v0, "admin":Lorg/json/JSONObject;
    const-string/jumbo v10, "id"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "role"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "admin":Lorg/json/JSONObject;
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "contacts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 46
    .local v4, "jcontacts":Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    .line 47
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 48
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 49
    .local v1, "contact":Lorg/json/JSONObject;
    const-string/jumbo v10, "user_id"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 50
    const-string/jumbo v10, "user_id"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "desc"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    .end local v1    # "contact":Lorg/json/JSONObject;
    .end local v2    # "i":I
    :cond_2
    new-instance v6, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-class v11, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v6, v10, v11}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 55
    .local v6, "res":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {v6}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/UserProfile;

    .line 56
    .local v5, "p":Lcom/vkcoffee/android/UserProfile;
    iget v10, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v7, v10}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 57
    iget-object v12, v5, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v13, "role"

    iget v10, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v13, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_4
    iget v10, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v8, v10}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 60
    iget-object v12, v5, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v13, "contact_title"

    iget v10, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v13, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 64
    .end local v3    # "jadmins":Lorg/json/JSONArray;
    .end local v4    # "jcontacts":Lorg/json/JSONArray;
    .end local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v6    # "res":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v7    # "roles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "titles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 65
    .local v9, "x":Ljava/lang/Exception;
    const-string/jumbo v10, "vk"

    invoke-static {v10, v9}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    const/4 v6, 0x0

    .end local v9    # "x":Ljava/lang/Exception;
    :cond_5
    return-object v6
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetAdminMembers;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method
