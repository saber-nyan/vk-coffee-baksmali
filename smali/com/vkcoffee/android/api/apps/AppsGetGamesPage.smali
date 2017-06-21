.class public Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AppsGetGamesPage.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Lcom/vkcoffee/android/data/ServerKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;",
        ">;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vkcoffee/android/data/ApiApplication;",
        ">;",
        "Lcom/vkcoffee/android/data/ServerKeys;"
    }
.end annotation


# static fields
.field private static final KEY_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final KEY_APPS:Ljava/lang/String; = "apps"

.field private static final KEY_CATALOG:Ljava/lang/String; = "catalog"

.field private static final KEY_CATALOG_FEATURED:Ljava/lang/String; = "catalogFeatured"

.field private static final KEY_CATALOG_MY:Ljava/lang/String; = "catalogMy"

.field private static final KEY_CATALOG_NEW:Ljava/lang/String; = "catalogNew"

.field private static final KEY_FRIENDS:Ljava/lang/String; = "friends"

.field private static final KEY_PROFILES:Ljava/lang/String; = "profiles"

.field private static final KEY_REQUESTS:Ljava/lang/String; = "requests"

.field private static final KEY_SECTIONS:Ljava/lang/String; = "sections"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "execute.getGamesPage"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "platform"

    const-string/jumbo v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 62
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "online,photo_100,photo_200,photo_50,sex"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 63
    return-void
.end method

.method static parseApplications(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 5
    .param p0, "o"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "apps"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 178
    .local v1, "apps1":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 179
    new-instance v0, Lcom/vkcoffee/android/data/ApiApplication;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/data/ApiApplication;-><init>(Lorg/json/JSONObject;)V

    .line 180
    .local v0, "app":Lcom/vkcoffee/android/data/ApiApplication;
    iget v3, v0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "app":Lcom/vkcoffee/android/data/ApiApplication;
    .end local v1    # "apps1":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static parseCatalog(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .param p0, "o"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "catalog":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-static {p0, p2}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v7

    iget-object v1, v7, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 156
    .local v1, "catalogJson":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 157
    new-instance v0, Lcom/vkcoffee/android/data/ApiApplication;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/vkcoffee/android/data/ApiApplication;-><init>(Lorg/json/JSONObject;)V

    .line 158
    .local v0, "app":Lcom/vkcoffee/android/data/ApiApplication;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "friends"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 159
    .local v2, "friendsIds":Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    .line 160
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 161
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 162
    .local v4, "id":I
    invoke-static {v4}, Lcom/vkcoffee/android/data/Friends;->get(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v6

    .line 163
    .local v6, "user":Lcom/vkcoffee/android/UserProfile;
    if-eqz v6, :cond_0

    .line 164
    iget-object v7, v0, Lcom/vkcoffee/android/data/ApiApplication;->friendsPhotos:Ljava/util/ArrayList;

    iget-object v8, v6, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 167
    .end local v4    # "id":I
    .end local v6    # "user":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    iput v7, v0, Lcom/vkcoffee/android/data/ApiApplication;->friends:I

    .line 169
    .end local v5    # "j":I
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "app":Lcom/vkcoffee/android/data/ApiApplication;
    .end local v2    # "friendsIds":Lorg/json/JSONArray;
    :cond_3
    return-void
.end method

.method static parseProfiles(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 5
    .param p0, "o"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "profiles"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 190
    .local v2, "profiles1":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 191
    new-instance v1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 192
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {p1, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v2    # "profiles1":Lorg/json/JSONArray;
    :cond_0
    return-void
.end method

.method private static setNotificationCountToAppInList(Ljava/util/List;II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    .line 132
    .local v0, "app":Lcom/vkcoffee/android/data/ApiApplication;
    iget v2, v0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    if-ne v2, p1, :cond_0

    .line 133
    iput p2, v0, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    .line 137
    .end local v0    # "app":Lcom/vkcoffee/android/data/ApiApplication;
    :cond_1
    return-void
.end method


# virtual methods
.method public compare(Lcom/vkcoffee/android/data/ApiApplication;Lcom/vkcoffee/android/data/ApiApplication;)I
    .locals 2
    .param p1, "lhs"    # Lcom/vkcoffee/android/data/ApiApplication;
    .param p2, "rhs"    # Lcom/vkcoffee/android/data/ApiApplication;

    .prologue
    .line 143
    iget v0, p1, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    if-nez v0, :cond_0

    iget v0, p2, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    iget v1, p2, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/vkcoffee/android/data/ApiApplication;

    check-cast p2, Lcom/vkcoffee/android/data/ApiApplication;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->compare(Lcom/vkcoffee/android/data/ApiApplication;Lcom/vkcoffee/android/data/ApiApplication;)I

    move-result v0

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;
    .locals 17
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 67
    :try_start_0
    new-instance v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;

    invoke-direct {v12}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;-><init>()V

    .line 69
    .local v12, "result":Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 70
    .local v9, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 72
    .local v1, "applications":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    const-string/jumbo v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 74
    iget-object v14, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->myCatalog:Ljava/util/ArrayList;

    const-string/jumbo v15, "catalogMy"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseCatalog(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;)V

    .line 75
    iget-object v14, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->newCatalog:Ljava/util/ArrayList;

    const-string/jumbo v15, "catalogNew"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseCatalog(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;)V

    .line 76
    iget-object v14, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->featuredCatalog:Ljava/util/ArrayList;

    const-string/jumbo v15, "catalogFeatured"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseCatalog(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;)V

    .line 77
    iget-object v14, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->catalog:Ljava/util/ArrayList;

    const-string/jumbo v15, "catalog"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseCatalog(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v14, "requests"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseProfiles(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v14, "activity"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseProfiles(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v14, "requests"

    move-object/from16 v0, p1

    invoke-static {v0, v1, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseApplications(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v14, "activity"

    move-object/from16 v0, p1

    invoke-static {v0, v1, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseApplications(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 85
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 87
    .local v3, "countRequest":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    const-string/jumbo v14, "requests"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v14

    iget-object v11, v14, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 88
    .local v11, "requestsJson":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v8, v14, :cond_3

    .line 89
    new-instance v10, Lcom/vkcoffee/android/data/GameRequest;

    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v10, v14, v9, v1}, Lcom/vkcoffee/android/data/GameRequest;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 90
    .local v10, "request":Lcom/vkcoffee/android/data/GameRequest;
    iget v14, v10, Lcom/vkcoffee/android/data/GameRequest;->type:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 91
    iget-object v14, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->invites:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget v14, v10, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    if-eqz v14, :cond_1

    .line 94
    iget v14, v10, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 95
    .local v2, "count":I
    iget v14, v10, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    add-int/lit8 v15, v2, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 97
    .end local v2    # "count":I
    :cond_1
    iget-object v14, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->requests:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    .end local v1    # "applications":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    .end local v3    # "countRequest":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    .end local v9    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v10    # "request":Lcom/vkcoffee/android/data/GameRequest;
    .end local v11    # "requestsJson":Lorg/json/JSONArray;
    .end local v12    # "result":Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;
    :catch_0
    move-exception v13

    .line 125
    .local v13, "x":Ljava/lang/Exception;
    const-string/jumbo v14, "vk"

    invoke-static {v14, v13}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    const/4 v12, 0x0

    .end local v13    # "x":Ljava/lang/Exception;
    :cond_2
    return-object v12

    .line 101
    .restart local v1    # "applications":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    .restart local v3    # "countRequest":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    .restart local v8    # "i":I
    .restart local v9    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v11    # "requestsJson":Lorg/json/JSONArray;
    .restart local v12    # "result":Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;
    :cond_3
    const/4 v8, 0x0

    :goto_2
    :try_start_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v8, v14, :cond_4

    .line 102
    iget-object v15, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->myCatalog:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->setNotificationCountToAppInList(Ljava/util/List;II)V

    .line 103
    iget-object v15, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->newCatalog:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->setNotificationCountToAppInList(Ljava/util/List;II)V

    .line 101
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 106
    :cond_4
    iget-object v14, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->myCatalog:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    iget-object v14, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->newCatalog:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    const-string/jumbo v14, "activity"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v14

    iget-object v4, v14, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 110
    .local v4, "feedsJson":Lorg/json/JSONArray;
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v8, v14, :cond_6

    .line 111
    new-instance v7, Lcom/vkcoffee/android/data/GameFeedEntry;

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v7, v14, v9, v1}, Lcom/vkcoffee/android/data/GameFeedEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 112
    .local v7, "gfe":Lcom/vkcoffee/android/data/GameFeedEntry;
    iget-object v14, v7, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    if-eqz v14, :cond_5

    iget-object v14, v7, Lcom/vkcoffee/android/data/GameFeedEntry;->app:Lcom/vkcoffee/android/data/ApiApplication;

    if-eqz v14, :cond_5

    .line 113
    iget-object v14, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->feed:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 117
    .end local v7    # "gfe":Lcom/vkcoffee/android/data/GameFeedEntry;
    :cond_6
    const-string/jumbo v14, "sections"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v14

    iget-object v6, v14, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 118
    .local v6, "genresArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v8, v14, :cond_2

    .line 119
    new-instance v5, Lcom/vkcoffee/android/data/GameGenre;

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v5, v14}, Lcom/vkcoffee/android/data/GameGenre;-><init>(Lorg/json/JSONObject;)V

    .line 120
    .local v5, "genre":Lcom/vkcoffee/android/data/GameGenre;
    iget-object v14, v12, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->genres:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;

    move-result-object v0

    return-object v0
.end method
