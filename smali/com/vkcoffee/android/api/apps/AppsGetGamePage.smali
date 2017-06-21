.class public Lcom/vkcoffee/android/api/apps/AppsGetGamePage;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AppsGetGamePage.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;",
        ">;",
        "Lcom/vkcoffee/android/data/ServerKeys;"
    }
.end annotation


# static fields
.field private static final KEY_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final KEY_APPLICATION:Ljava/lang/String; = "app"

.field private static final KEY_IS_MEMBER:Ljava/lang/String; = "isMember"

.field private static final KEY_LIDERBOARDS:Ljava/lang/String; = "liderboards"

.field private static final KEY_PROFILES:Ljava/lang/String; = "profiles"

.field private static final KEY_REQUESTS:Ljava/lang/String; = "requests"


# instance fields
.field private final appId:I

.field private final db:Lcom/vkcoffee/android/data/db/Database;


# direct methods
.method public constructor <init>(ILcom/vkcoffee/android/data/db/Database;)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "db"    # Lcom/vkcoffee/android/data/db/Database;

    .prologue
    .line 57
    const-string/jumbo v0, "execute.getGamePage"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "platform"

    const-string/jumbo v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 59
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "points"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 60
    const-string/jumbo v0, "app_id"

    iput p1, p0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;->appId:I

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 61
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "online,photo_100,photo_50,photo_200,sex"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 62
    iput-object p2, p0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;->db:Lcom/vkcoffee/android/data/db/Database;

    .line 63
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;
    .locals 17
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 67
    :try_start_0
    const-string/jumbo v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 70
    const-string/jumbo v14, "app"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "app"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 71
    new-instance v11, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    new-instance v14, Lcom/vkcoffee/android/data/ApiApplication;

    const-string/jumbo v15, "app"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/vkcoffee/android/data/ApiApplication;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v11, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;-><init>(Lcom/vkcoffee/android/data/ApiApplication;)V

    .line 76
    .local v11, "result":Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;
    :goto_0
    const-string/jumbo v14, "isMember"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string/jumbo v14, "isMember"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 77
    const-string/jumbo v14, "isMember"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    iput-boolean v14, v11, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->isMember:Z

    .line 80
    :cond_0
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 81
    .local v8, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 83
    .local v1, "applications":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    const-string/jumbo v14, "requests"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseProfiles(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v14, "activity"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseProfiles(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v14, "profiles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 87
    .local v6, "jsonArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_3

    .line 88
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_3

    .line 89
    new-instance v12, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 90
    .local v12, "userProfile":Lcom/vkcoffee/android/UserProfile;
    iget v14, v12, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v8, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v14, v11, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->userPlayed:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 73
    .end local v1    # "applications":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    .end local v5    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v11    # "result":Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;
    .end local v12    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    new-instance v11, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    const/4 v14, 0x0

    invoke-direct {v11, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;-><init>(Lcom/vkcoffee/android/data/ApiApplication;)V

    .restart local v11    # "result":Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;
    goto :goto_0

    .line 77
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 95
    .restart local v1    # "applications":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v8    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_3
    const-string/jumbo v14, "requests"

    move-object/from16 v0, p1

    invoke-static {v0, v1, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseApplications(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v14, "activity"

    move-object/from16 v0, p1

    invoke-static {v0, v1, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseApplications(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 98
    iget-object v14, v11, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsDb:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;->db:Lcom/vkcoffee/android/data/db/Database;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;->appId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Lcom/vkcoffee/android/data/db/Database;->getRequests(ILandroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    const-string/jumbo v14, "requests"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v2

    .line 101
    .local v2, "arrayWithCount":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    if-eqz v2, :cond_6

    .line 102
    iget-object v10, v2, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 103
    .local v10, "requestsJson":Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_6

    .line 104
    new-instance v9, Lcom/vkcoffee/android/data/GameRequest;

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v9, v14, v8, v1}, Lcom/vkcoffee/android/data/GameRequest;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 105
    .local v9, "request":Lcom/vkcoffee/android/data/GameRequest;
    iget v14, v9, Lcom/vkcoffee/android/data/GameRequest;->type:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_5

    iget v14, v9, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    iget-object v15, v11, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget v15, v15, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    if-ne v14, v15, :cond_5

    .line 106
    iget-object v14, v11, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsDb:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 107
    iget-object v14, v11, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsServer:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_4
    iget-object v14, v11, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsServerReal:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 114
    .end local v5    # "i":I
    .end local v9    # "request":Lcom/vkcoffee/android/data/GameRequest;
    .end local v10    # "requestsJson":Lorg/json/JSONArray;
    :cond_6
    const-string/jumbo v14, "activity"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_8

    .line 116
    iget-object v3, v2, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 117
    .local v3, "feedsJson":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_8

    .line 118
    new-instance v4, Lcom/vkcoffee/android/data/GameFeedEntry;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v4, v14, v8, v1}, Lcom/vkcoffee/android/data/GameFeedEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 119
    .local v4, "gfe":Lcom/vkcoffee/android/data/GameFeedEntry;
    iget-object v14, v4, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    if-eqz v14, :cond_7

    iget-object v14, v4, Lcom/vkcoffee/android/data/GameFeedEntry;->app:Lcom/vkcoffee/android/data/ApiApplication;

    if-eqz v14, :cond_7

    .line 120
    iget-object v14, v11, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->feed:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 125
    .end local v3    # "feedsJson":Lorg/json/JSONArray;
    .end local v4    # "gfe":Lcom/vkcoffee/android/data/GameFeedEntry;
    .end local v5    # "i":I
    :cond_8
    const-string/jumbo v14, "liderboards"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 126
    const-string/jumbo v14, "liderboards"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseProfiles(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v14, "liderboards"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v14

    iget-object v7, v14, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 128
    .local v7, "leaderboardsJson":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_9

    .line 129
    iget-object v14, v11, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->gameLeaderboards:Ljava/util/ArrayList;

    new-instance v15, Lcom/vkcoffee/android/data/GameLeaderboard;

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v8}, Lcom/vkcoffee/android/data/GameLeaderboard;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 133
    .end local v1    # "applications":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    .end local v2    # "arrayWithCount":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    .end local v5    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "leaderboardsJson":Lorg/json/JSONArray;
    .end local v8    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v11    # "result":Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;
    :catch_0
    move-exception v13

    .line 134
    .local v13, "x":Ljava/lang/Exception;
    const-string/jumbo v14, "vk"

    invoke-static {v14, v13}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    const/4 v11, 0x0

    .end local v13    # "x":Ljava/lang/Exception;
    :cond_9
    return-object v11
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    move-result-object v0

    return-object v0
.end method
