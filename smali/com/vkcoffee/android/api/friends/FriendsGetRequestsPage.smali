.class public Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "FriendsGetRequestsPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "execute.getFriendRequestsPage"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;
    .locals 35
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    :try_start_0
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v23, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v18, "recoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v10, "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-static {v10}, Lcom/vkcoffee/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 35
    const-string/jumbo v29, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "f"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 36
    .local v21, "requests":Lorg/json/JSONArray;
    const-string/jumbo v29, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "p"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 37
    .local v15, "profiles":Lorg/json/JSONArray;
    const-string/jumbo v29, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "s"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 38
    .local v16, "recom":Lorg/json/JSONArray;
    const-string/jumbo v29, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "s_from"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 39
    .local v2, "fnames":Lorg/json/JSONArray;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v24, "suggested":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v29, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "sc"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 41
    .local v17, "recomCnt":I
    const-string/jumbo v29, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "fc"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    .line 42
    .local v20, "reqCnt":I
    const/4 v9, 0x0

    .line 43
    .local v9, "myCountry":I
    const-string/jumbo v29, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "mc"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 44
    const-string/jumbo v29, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "mc"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "id"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 46
    :cond_0
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v29

    if-nez v29, :cond_2

    :cond_1
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v29

    if-eqz v29, :cond_3

    :cond_2
    if-nez v15, :cond_4

    .line 47
    :cond_3
    new-instance v22, Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;

    invoke-direct/range {v22 .. v22}, Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;-><init>()V

    .line 170
    .end local v2    # "fnames":Lorg/json/JSONArray;
    .end local v9    # "myCountry":I
    .end local v10    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v15    # "profiles":Lorg/json/JSONArray;
    .end local v16    # "recom":Lorg/json/JSONArray;
    .end local v17    # "recomCnt":I
    .end local v18    # "recoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    .end local v20    # "reqCnt":I
    .end local v21    # "requests":Lorg/json/JSONArray;
    .end local v23    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    .end local v24    # "suggested":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :goto_0
    return-object v22

    .line 49
    .restart local v2    # "fnames":Lorg/json/JSONArray;
    .restart local v9    # "myCountry":I
    .restart local v10    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v15    # "profiles":Lorg/json/JSONArray;
    .restart local v16    # "recom":Lorg/json/JSONArray;
    .restart local v17    # "recomCnt":I
    .restart local v18    # "recoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    .restart local v20    # "reqCnt":I
    .restart local v21    # "requests":Lorg/json/JSONArray;
    .restart local v23    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    .restart local v24    # "suggested":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_4
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v27, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v3, "fromNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v15, :cond_9

    .line 52
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_9

    .line 53
    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 54
    .local v6, "jp":Lorg/json/JSONObject;
    new-instance v13, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v13}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 55
    .local v13, "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v29, "first_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 56
    const-string/jumbo v29, "last_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 57
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v13, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v13, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 58
    sget v29, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v30, 0x3f800000    # 1.0f

    cmpl-float v29, v29, v30

    if-lez v29, :cond_6

    const-string/jumbo v29, "photo_100"

    :goto_2
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 59
    const-string/jumbo v29, "id"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    iput v0, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 60
    const-string/jumbo v29, "country"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v13, Lcom/vkcoffee/android/UserProfile;->country:I

    .line 61
    const-string/jumbo v29, "city"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v13, Lcom/vkcoffee/android/UserProfile;->city:I

    .line 62
    const-string/jumbo v29, "university_name"

    const-string/jumbo v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_7

    .line 63
    const-string/jumbo v29, "university_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "\r\n"

    const-string/jumbo v31, ""

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 64
    const-string/jumbo v29, "graduation"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v29

    if-lez v29, :cond_5

    .line 65
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v13, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " \'%02d"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "graduation"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v33

    rem-int/lit8 v33, v33, 0x64

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 75
    :cond_5
    :goto_3
    const-string/jumbo v29, "id"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 58
    :cond_6
    const-string/jumbo v29, "photo_50"

    goto/16 :goto_2

    .line 67
    :cond_7
    const-string/jumbo v29, "country"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 68
    const-string/jumbo v29, "country"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "title"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 69
    const-string/jumbo v29, "city"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 70
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v13, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "city"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "title"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 167
    .end local v2    # "fnames":Lorg/json/JSONArray;
    .end local v3    # "fromNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v6    # "jp":Lorg/json/JSONObject;
    .end local v9    # "myCountry":I
    .end local v10    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v13    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v15    # "profiles":Lorg/json/JSONArray;
    .end local v16    # "recom":Lorg/json/JSONArray;
    .end local v17    # "recomCnt":I
    .end local v18    # "recoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    .end local v20    # "reqCnt":I
    .end local v21    # "requests":Lorg/json/JSONArray;
    .end local v23    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    .end local v24    # "suggested":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v27    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v28

    .line 168
    .local v28, "x":Ljava/lang/Exception;
    const-string/jumbo v29, "vk"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 73
    .end local v28    # "x":Ljava/lang/Exception;
    .restart local v2    # "fnames":Lorg/json/JSONArray;
    .restart local v3    # "fromNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "i":I
    .restart local v6    # "jp":Lorg/json/JSONObject;
    .restart local v9    # "myCountry":I
    .restart local v10    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v13    # "p":Lcom/vkcoffee/android/UserProfile;
    .restart local v15    # "profiles":Lorg/json/JSONArray;
    .restart local v16    # "recom":Lorg/json/JSONArray;
    .restart local v17    # "recomCnt":I
    .restart local v18    # "recoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    .restart local v20    # "reqCnt":I
    .restart local v21    # "requests":Lorg/json/JSONArray;
    .restart local v23    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    .restart local v24    # "suggested":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v27    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkcoffee/android/UserProfile;>;"
    :cond_8
    const/16 v29, 0x0

    :try_start_1
    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto/16 :goto_3

    .line 79
    .end local v4    # "i":I
    .end local v6    # "jp":Lorg/json/JSONObject;
    .end local v13    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_9
    if-eqz v2, :cond_a

    .line 80
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_a

    .line 81
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 82
    .local v12, "oo":Lorg/json/JSONObject;
    const-string/jumbo v29, "id"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "first_name"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "last_name"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 86
    .end local v4    # "i":I
    .end local v12    # "oo":Lorg/json/JSONObject;
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_f

    .line 87
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 88
    .local v7, "jreq":Lorg/json/JSONObject;
    new-instance v19, Lcom/vkcoffee/android/api/FriendRequest;

    invoke-direct/range {v19 .. v19}, Lcom/vkcoffee/android/api/FriendRequest;-><init>()V

    .line 89
    .local v19, "req":Lcom/vkcoffee/android/api/FriendRequest;
    const-string/jumbo v29, "user_id"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 90
    const-string/jumbo v29, "message"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->message:Ljava/lang/String;

    .line 91
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 92
    const-string/jumbo v29, "mutual"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 93
    const/16 v29, 0x5

    const-string/jumbo v30, "mutual"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "users"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v30

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 94
    .local v11, "nMFriends":I
    new-array v0, v11, [Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->mutualFriends:[Lcom/vkcoffee/android/UserProfile;

    .line 95
    const-string/jumbo v29, "mutual"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "count"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->numMutualFriends:I

    .line 96
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    if-ge v5, v11, :cond_e

    .line 97
    const-string/jumbo v29, "mutual"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "users"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v25

    .line 98
    .local v25, "uid":I
    new-instance v26, Lcom/vkcoffee/android/UserProfile;

    invoke-direct/range {v26 .. v26}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 99
    .local v26, "up":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_b
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_c

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/UserProfile;

    .line 100
    .local v14, "pp":Lcom/vkcoffee/android/UserProfile;
    iget v0, v14, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 101
    move-object/from16 v26, v14

    .line 105
    .end local v14    # "pp":Lcom/vkcoffee/android/UserProfile;
    :cond_c
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/api/FriendRequest;->mutualFriends:[Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v29, v0

    aput-object v26, v29, v5

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 108
    .end local v5    # "j":I
    .end local v11    # "nMFriends":I
    .end local v25    # "uid":I
    .end local v26    # "up":Lcom/vkcoffee/android/UserProfile;
    :cond_d
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->numMutualFriends:I

    .line 110
    :cond_e
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 112
    .end local v7    # "jreq":Lorg/json/JSONObject;
    .end local v19    # "req":Lcom/vkcoffee/android/api/FriendRequest;
    :cond_f
    if-eqz v16, :cond_14

    .line 113
    const/4 v4, 0x0

    :goto_7
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_14

    .line 114
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 115
    .restart local v7    # "jreq":Lorg/json/JSONObject;
    new-instance v19, Lcom/vkcoffee/android/api/FriendRequest;

    invoke-direct/range {v19 .. v19}, Lcom/vkcoffee/android/api/FriendRequest;-><init>()V

    .line 116
    .restart local v19    # "req":Lcom/vkcoffee/android/api/FriendRequest;
    const-string/jumbo v29, "user_id"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 117
    sget-object v29, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0801ac

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "from"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->message:Ljava/lang/String;

    .line 119
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 127
    const-string/jumbo v29, "mutual"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 128
    const/16 v29, 0x5

    const-string/jumbo v30, "mutual"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "users"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v30

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 129
    .restart local v11    # "nMFriends":I
    new-array v0, v11, [Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->mutualFriends:[Lcom/vkcoffee/android/UserProfile;

    .line 130
    const-string/jumbo v29, "mutual"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "count"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->numMutualFriends:I

    .line 131
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_8
    if-ge v5, v11, :cond_13

    .line 132
    const-string/jumbo v29, "mutual"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "users"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v25

    .line 133
    .restart local v25    # "uid":I
    new-instance v26, Lcom/vkcoffee/android/UserProfile;

    invoke-direct/range {v26 .. v26}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 134
    .restart local v26    # "up":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_10
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_11

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/UserProfile;

    .line 135
    .restart local v14    # "pp":Lcom/vkcoffee/android/UserProfile;
    iget v0, v14, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 136
    move-object/from16 v26, v14

    .line 140
    .end local v14    # "pp":Lcom/vkcoffee/android/UserProfile;
    :cond_11
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/api/FriendRequest;->mutualFriends:[Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v29, v0

    aput-object v26, v29, v5

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 143
    .end local v5    # "j":I
    .end local v11    # "nMFriends":I
    .end local v25    # "uid":I
    .end local v26    # "up":Lcom/vkcoffee/android/UserProfile;
    :cond_12
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkcoffee/android/api/FriendRequest;->numMutualFriends:I

    .line 145
    :cond_13
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 148
    .end local v7    # "jreq":Lorg/json/JSONObject;
    .end local v19    # "req":Lcom/vkcoffee/android/api/FriendRequest;
    :cond_14
    const-string/jumbo v29, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "s2"

    invoke-static/range {v29 .. v30}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v8, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 149
    .local v8, "jsuggested":Lorg/json/JSONArray;
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_16

    .line 150
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 151
    .restart local v6    # "jp":Lorg/json/JSONObject;
    new-instance v13, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v13}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 152
    .restart local v13    # "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v29, "id"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    iput v0, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 153
    const-string/jumbo v29, "first_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 154
    const-string/jumbo v29, "last_name"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 155
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v13, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v13, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 156
    sget v29, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v30, 0x3f800000    # 1.0f

    cmpl-float v29, v29, v30

    if-lez v29, :cond_15

    const-string/jumbo v29, "photo_100"

    :goto_a
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 157
    sget-object v29, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0e002e

    const-string/jumbo v31, "common_count"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string/jumbo v34, "common_count"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 158
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 156
    :cond_15
    const-string/jumbo v29, "photo_50"

    goto :goto_a

    .line 160
    .end local v6    # "jp":Lorg/json/JSONObject;
    .end local v13    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_16
    new-instance v22, Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;

    invoke-direct/range {v22 .. v22}, Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;-><init>()V

    .line 161
    .local v22, "res":Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;->reqs:Ljava/util/ArrayList;

    .line 162
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;->recommends:Ljava/util/ArrayList;

    .line 163
    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;->numRecoms:I

    .line 164
    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;->numRequests:I

    .line 165
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;->suggested:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/friends/FriendsGetRequestsPage$Result;

    move-result-object v0

    return-object v0
.end method
