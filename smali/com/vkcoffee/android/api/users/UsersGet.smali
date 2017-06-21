.class public Lcom/vkcoffee/android/api/users/UsersGet;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "UsersGet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 4
    .param p2, "nameCase"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const-string/jumbo v0, "photo_medium_rec"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string/jumbo v2, "is_friend"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "sex"

    aput-object v2, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/vkcoffee/android/api/users/UsersGet;-><init>(Ljava/util/List;[Ljava/lang/String;)V

    .line 53
    packed-switch p2, :pswitch_data_0

    .line 70
    :goto_1
    return-void

    .line 52
    :cond_0
    const-string/jumbo v0, "photo_rec"

    goto :goto_0

    .line 55
    :pswitch_0
    const-string/jumbo v0, "name_case"

    const-string/jumbo v1, "gen"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 58
    :pswitch_1
    const-string/jumbo v0, "name_case"

    const-string/jumbo v1, "dat"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 61
    :pswitch_2
    const-string/jumbo v0, "name_case"

    const-string/jumbo v1, "acc"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 64
    :pswitch_3
    const-string/jumbo v0, "name_case"

    const-string/jumbo v1, "ins"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 67
    :pswitch_4
    const-string/jumbo v0, "name_case"

    const-string/jumbo v1, "abl"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/List;[Ljava/lang/String;)V
    .locals 6
    .param p2, "fields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v3, "execute.getUsersAndGroups"

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 40
    .local v1, "uid":I
    if-gtz v1, :cond_0

    const v3, -0x77359400

    if-ge v1, v3, :cond_1

    .line 41
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_1
    neg-int v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    .end local v1    # "uid":I
    :cond_2
    const-string/jumbo v3, "fields"

    const-string/jumbo v4, ","

    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/users/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    const-string/jumbo v4, "user_ids"

    const-string/jumbo v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 48
    const-string/jumbo v3, "group_ids"

    const-string/jumbo v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/users/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 49
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/String;)V
    .locals 6
    .param p1, "uids"    # [I
    .param p2, "fields"    # [Ljava/lang/String;

    .prologue
    .line 20
    const-string/jumbo v3, "execute.getUsersAndGroups"

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget v1, p1, v3

    .line 24
    .local v1, "uid":I
    if-gtz v1, :cond_0

    const v5, -0x77359400

    if-ge v1, v5, :cond_1

    .line 25
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    :cond_1
    neg-int v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    .end local v1    # "uid":I
    :cond_2
    const-string/jumbo v3, "fields"

    const-string/jumbo v4, ","

    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/users/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    const-string/jumbo v4, "user_ids"

    const-string/jumbo v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 32
    const-string/jumbo v3, "group_ids"

    const-string/jumbo v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/users/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 33
    return-void
.end method


# virtual methods
.method public varargs fields([Ljava/lang/String;)Lcom/vkcoffee/android/api/users/UsersGet;
    .locals 2
    .param p1, "fields"    # [Ljava/lang/String;

    .prologue
    .line 73
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 74
    return-object p0
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/users/UsersGet;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    .line 79
    :try_start_0
    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v10, "users"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 80
    .local v4, "r":Lorg/json/JSONArray;
    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v10, "groups"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 81
    .local v0, "gr":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 83
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 84
    .local v2, "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 85
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v7, "first_name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 86
    const-string/jumbo v7, "last_name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v3, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 88
    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_2

    const-string/jumbo v7, "photo_medium_rec"

    :goto_1
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 89
    const-string/jumbo v7, "is_friend"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    const-string/jumbo v7, "is_friend"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_3

    move v7, v8

    :goto_2
    iput-boolean v7, v3, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    .line 92
    :cond_0
    const-string/jumbo v7, "sex"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 93
    const-string/jumbo v7, "sex"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_4

    move v7, v8

    :goto_3
    iput-boolean v7, v3, Lcom/vkcoffee/android/UserProfile;->f:Z

    .line 95
    :cond_1
    const-string/jumbo v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 96
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 88
    :cond_2
    const-string/jumbo v7, "photo_rec"

    goto :goto_1

    :cond_3
    move v7, v9

    .line 90
    goto :goto_2

    :cond_4
    move v7, v9

    .line 93
    goto :goto_3

    .line 98
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 99
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 100
    .restart local v2    # "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 101
    .restart local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 102
    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_6

    const-string/jumbo v7, "photo_100"

    :goto_5
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 103
    const-string/jumbo v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    neg-int v7, v7

    iput v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 104
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 102
    :cond_6
    const-string/jumbo v7, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 107
    .end local v0    # "gr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v4    # "r":Lorg/json/JSONArray;
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v6

    .line 108
    .local v6, "x":Ljava/lang/Exception;
    const-string/jumbo v7, "vk"

    invoke-static {v7, v6}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    const/4 v5, 0x0

    .end local v6    # "x":Ljava/lang/Exception;
    :cond_7
    return-object v5
.end method
