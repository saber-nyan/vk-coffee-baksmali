.class public Lcom/vkcoffee/android/api/groups/GroupsGetLinks;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GroupsGetLinks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gid"    # I

    .prologue
    .line 20
    const-string/jumbo v0, "groups.getById"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "links"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetLinks;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetLinks;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetLinks;->parse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 27
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "links"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 29
    .local v2, "links":Lorg/json/JSONArray;
    if-eqz v2, :cond_4

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 31
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 32
    .local v1, "link":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 33
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v8, "id"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 34
    sget v8, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_1

    const-string/jumbo v8, "photo_100"

    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 35
    const-string/jumbo v8, "desc"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 36
    const-string/jumbo v8, "name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 37
    const-string/jumbo v8, "url"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    .line 38
    const-string/jumbo v8, "edit_title"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 39
    iget-object v8, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 40
    sget v8, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_2

    const/16 v5, 0x64

    .line 41
    .local v5, "size":I
    :goto_2
    iget-object v8, v3, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    const-string/jumbo v9, "//vk.com/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "http://vk.com/images/lnkinner"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".gif"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    iput-object v8, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 43
    .end local v5    # "size":I
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 34
    :cond_1
    const-string/jumbo v8, "photo_50"

    goto :goto_1

    .line 40
    :cond_2
    const/16 v5, 0x32

    goto :goto_2

    .line 41
    .restart local v5    # "size":I
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "http://vk.com/images/lnkouter"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".gif"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_3

    .line 47
    .end local v0    # "i":I
    .end local v1    # "link":Lorg/json/JSONObject;
    .end local v2    # "links":Lorg/json/JSONArray;
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v5    # "size":I
    :catch_0
    move-exception v6

    .line 48
    .local v6, "x":Ljava/lang/Exception;
    const-string/jumbo v8, "vk"

    invoke-static {v8, v6}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v7

    .line 50
    .end local v6    # "x":Ljava/lang/Exception;
    :cond_4
    return-object v4
.end method
