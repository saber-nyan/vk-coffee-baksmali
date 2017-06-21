.class public Lcom/vkcoffee/android/api/friends/FriendsGetRequests;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "FriendsGetRequests.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/FriendRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private suggested:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "suggests"    # Z

    .prologue
    .line 26
    const-string/jumbo v0, "execute.getFriendRequestsMaterial"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    const-string/jumbo v0, "func_v"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 30
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "online,photo_50,photo_100,photo_200"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 31
    iput-boolean p3, p0, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;->suggested:Z

    .line 32
    if-eqz p3, :cond_0

    .line 33
    const-string/jumbo v0, "suggested"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 35
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/api/friends/FriendsGetRequests;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/api/friends/FriendsGetRequests;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;->suggested:Z

    return v0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 17
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/FriendRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v6, "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-static {v6}, Lcom/vkcoffee/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 41
    const-string/jumbo v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "profiles"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 42
    .local v9, "profiles":Lorg/json/JSONArray;
    const-string/jumbo v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "s_from"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 43
    .local v1, "fnames":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 44
    .local v5, "myCountry":I
    const-string/jumbo v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "mc"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 45
    const-string/jumbo v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "mc"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 50
    :cond_0
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 51
    .local v10, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 52
    .local v2, "fromNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v9, :cond_4

    .line 53
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 54
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 55
    .local v4, "jp":Lorg/json/JSONObject;
    new-instance v8, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v8, v4}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 56
    .local v8, "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v12, "country"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v8, Lcom/vkcoffee/android/UserProfile;->country:I

    .line 57
    const-string/jumbo v12, "city"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v8, Lcom/vkcoffee/android/UserProfile;->city:I

    .line 58
    const-string/jumbo v12, "university_name"

    const-string/jumbo v13, ""

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 59
    const-string/jumbo v12, "university_name"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\r\n"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 60
    const-string/jumbo v12, "graduation"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-lez v12, :cond_1

    .line 61
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v8, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " \'%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "graduation"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    rem-int/lit8 v16, v16, 0x64

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 71
    :cond_1
    :goto_1
    iget v12, v8, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v10, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 63
    :cond_2
    const-string/jumbo v12, "country"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 64
    const-string/jumbo v12, "country"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "title"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 65
    const-string/jumbo v12, "city"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 66
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v8, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "city"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "title"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 115
    .end local v1    # "fnames":Lorg/json/JSONArray;
    .end local v2    # "fromNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "jp":Lorg/json/JSONObject;
    .end local v5    # "myCountry":I
    .end local v6    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v8    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v9    # "profiles":Lorg/json/JSONArray;
    .end local v10    # "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v11

    .line 116
    .local v11, "x":Ljava/lang/Exception;
    const-string/jumbo v12, "vk"

    invoke-static {v12, v11}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    const/4 v12, 0x0

    .end local v11    # "x":Ljava/lang/Exception;
    :goto_2
    return-object v12

    .line 69
    .restart local v1    # "fnames":Lorg/json/JSONArray;
    .restart local v2    # "fromNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jp":Lorg/json/JSONObject;
    .restart local v5    # "myCountry":I
    .restart local v6    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v8    # "p":Lcom/vkcoffee/android/UserProfile;
    .restart local v9    # "profiles":Lorg/json/JSONArray;
    .restart local v10    # "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_3
    const/4 v12, 0x0

    :try_start_1
    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_1

    .line 75
    .end local v3    # "i":I
    .end local v4    # "jp":Lorg/json/JSONObject;
    .end local v8    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_4
    if-eqz v1, :cond_5

    .line 76
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_5

    .line 77
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 78
    .local v7, "oo":Lorg/json/JSONObject;
    const-string/jumbo v12, "id"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "first_name"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "last_name"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 82
    .end local v3    # "i":I
    .end local v7    # "oo":Lorg/json/JSONObject;
    :cond_5
    new-instance v12, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v14, Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v2, v6}, Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;-><init>(Lcom/vkcoffee/android/api/friends/FriendsGetRequests;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    invoke-direct {v12, v13, v14}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V
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
    .line 21
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method
