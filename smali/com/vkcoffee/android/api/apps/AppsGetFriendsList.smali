.class public Lcom/vkcoffee/android/api/apps/AppsGetFriendsList;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AppsGetFriendsList.java"


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
.method public constructor <init>(I)V
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 15
    const-string/jumbo v0, "apps.getFriendsList"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "invite"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetFriendsList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "count"

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetFriendsList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/apps/AppsGetFriendsList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    const-string/jumbo v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetFriendsList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    const-string/jumbo v1, "fields"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const-string/jumbo v0, "photo_medium_rec"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",online"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",bdate,first_name_gen,last_name_gen,sex"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/apps/AppsGetFriendsList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    return-void

    .line 20
    :cond_0
    const-string/jumbo v0, "photo_rec"

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 9
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 26
    :try_start_0
    new-instance v5, Lcom/vkcoffee/android/data/VKList;

    invoke-direct {v5}, Lcom/vkcoffee/android/data/VKList;-><init>()V

    .line 27
    .local v5, "users":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "items"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 28
    .local v0, "a":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    move-object v5, v6

    .line 41
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v5    # "users":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 31
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v5    # "users":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 32
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 33
    .local v3, "obj":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v4, v3}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 34
    .local v4, "p":Lcom/vkcoffee/android/UserProfile;
    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const-string/jumbo v7, "photo_medium_rec"

    :goto_2
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 35
    invoke-virtual {v5, v4}, Lcom/vkcoffee/android/data/VKList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    :cond_2
    const-string/jumbo v7, "photo_rec"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 38
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v5    # "users":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "vk"

    invoke-static {v7, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v6

    .line 41
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/apps/AppsGetFriendsList;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method
