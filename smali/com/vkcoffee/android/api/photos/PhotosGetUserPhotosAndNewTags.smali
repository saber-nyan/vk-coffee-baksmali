.class public Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PhotosGetUserPhotosAndNewTags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 21
    const-string/jumbo v0, "execute.getUserPhotosAndNewTags"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "extended"

    invoke-virtual {v0, v1, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "sort"

    const-string/jumbo v2, "desc"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_sizes"

    invoke-virtual {v0, v1, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;
    .locals 9
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v4, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;

    invoke-direct {v4}, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;-><init>()V

    .line 28
    .local v4, "result":Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;
    new-instance v6, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-class v8, Lcom/vkcoffee/android/Photo;

    invoke-direct {v6, v7, v8}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    iput-object v6, v4, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->photos:Lcom/vkcoffee/android/data/VKList;

    .line 29
    const-string/jumbo v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "new_tags"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 30
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v4, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->profiles:Landroid/util/SparseArray;

    .line 31
    new-instance v6, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "new_tags"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-class v8, Lcom/vkcoffee/android/TaggedPhoto;

    invoke-direct {v6, v7, v8}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    iput-object v6, v4, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->newTags:Lcom/vkcoffee/android/data/VKList;

    .line 32
    const-string/jumbo v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "users"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 33
    .local v5, "users":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 34
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 35
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v6, v4, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->profiles:Landroid/util/SparseArray;

    iget v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v6, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    const-string/jumbo v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "groups"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 38
    .local v0, "groups":Lorg/json/JSONArray;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 40
    .local v2, "jg":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 41
    .restart local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v6, "id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    neg-int v6, v6

    iput v6, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 42
    sget v6, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    const-string/jumbo v6, "photo_100"

    :goto_2
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 43
    const-string/jumbo v6, "name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 44
    iget-object v6, v4, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->profiles:Landroid/util/SparseArray;

    iget v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v6, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    :cond_1
    const-string/jumbo v6, "photo_50"

    goto :goto_2

    .line 47
    .end local v0    # "groups":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jg":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v5    # "users":Lorg/json/JSONArray;
    :cond_2
    return-object v4
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;

    move-result-object v0

    return-object v0
.end method
