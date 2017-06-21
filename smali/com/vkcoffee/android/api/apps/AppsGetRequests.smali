.class public Lcom/vkcoffee/android/api/apps/AppsGetRequests;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AppsGetRequests.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/vkcoffee/android/data/GameRequest;",
        ">;>;",
        "Lcom/vkcoffee/android/data/ServerKeys;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const-string/jumbo v0, "apps.getRequests"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "platform"

    const-string/jumbo v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetRequests;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_100,photo_50,sex"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetRequests;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    const-string/jumbo v0, "group"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetRequests;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
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
    .line 18
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/apps/AppsGetRequests;->parse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/GameRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v3, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/GameRequest;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 31
    .local v2, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 33
    .local v0, "applications":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    const-string/jumbo v5, "response"

    invoke-static {p1, v2, v5}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseProfiles(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v5, "response"

    invoke-static {p1, v0, v5}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->parseApplications(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v5, "response"

    invoke-static {p1, v5}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v5

    iget-object v4, v5, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 37
    .local v4, "requestsArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 38
    new-instance v5, Lcom/vkcoffee/android/data/GameRequest;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6, v2, v0}, Lcom/vkcoffee/android/data/GameRequest;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-object v3
.end method
