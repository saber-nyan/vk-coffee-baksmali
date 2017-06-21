.class public Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "NewsfeedGetBanned.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    const-string/jumbo v0, "newsfeed.getBanned"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string/jumbo v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "fields"

    const-string/jumbo v2, "photo_50,photo_100,photo_200"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "profiles"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 25
    .local v3, "ju":Lorg/json/JSONArray;
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "groups"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 26
    .local v2, "jg":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 27
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 28
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 29
    .local v6, "u":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v4, v6}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 30
    .local v4, "p":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "i":I
    .end local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v6    # "u":Lorg/json/JSONObject;
    :cond_0
    if-eqz v2, :cond_4

    .line 34
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 35
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 36
    .restart local v6    # "u":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v4}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 37
    .restart local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v9, "id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    neg-int v9, v9

    iput v9, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 38
    const-string/jumbo v9, "name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 39
    sget v9, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v10, 0x40000000    # 2.0f

    cmpl-float v9, v9, v10

    if-gez v9, :cond_1

    sget-boolean v9, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v9, :cond_2

    :cond_1
    const-string/jumbo v9, "photo_200"

    :goto_2
    const-string/jumbo v10, "photo_100"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    :cond_2
    sget v9, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    const-string/jumbo v9, "photo_100"

    goto :goto_2

    :cond_3
    const-string/jumbo v9, "photo_50"

    goto :goto_2

    .line 43
    .end local v1    # "i":I
    .end local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v6    # "u":Lorg/json/JSONObject;
    :cond_4
    new-instance v5, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;

    invoke-direct {v5}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;-><init>()V

    .line 44
    .local v5, "r":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;
    iput-object v7, v5, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;->users:Ljava/util/ArrayList;

    .line 45
    iput-object v0, v5, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;->groups:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v2    # "jg":Lorg/json/JSONArray;
    .end local v3    # "ju":Lorg/json/JSONArray;
    .end local v5    # "r":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;
    .end local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :goto_3
    return-object v5

    .line 47
    :catch_0
    move-exception v8

    .line 48
    .local v8, "x":Ljava/lang/Exception;
    const-string/jumbo v9, "vk"

    invoke-static {v9, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    const/4 v5, 0x0

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
    .line 13
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;

    move-result-object v0

    return-object v0
.end method
