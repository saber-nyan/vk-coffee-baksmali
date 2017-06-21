.class public Lcom/vkcoffee/android/api/photos/PhotosGetNewTags;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PhotosGetNewTags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 21
    const-string/jumbo v0, "execute.getNewPhotoTagsWithProfiles"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_sizes"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;
    .locals 9
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v4, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;

    invoke-direct {v4}, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;-><init>()V

    .line 28
    .local v4, "result":Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;
    new-instance v5, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-class v8, Lcom/vkcoffee/android/TaggedPhoto;

    invoke-direct {v5, v7, v8}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 29
    .local v5, "tmp":Lcom/vkcoffee/android/data/VKList;
    check-cast v5, Lcom/vkcoffee/android/data/VKList;

    .end local v5    # "tmp":Lcom/vkcoffee/android/data/VKList;
    iput-object v5, v4, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;->photos:Lcom/vkcoffee/android/data/VKList;

    .line 30
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, v4, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;->profiles:Landroid/util/SparseArray;

    .line 31
    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "users"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 32
    .local v6, "users":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 33
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 34
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v7, v4, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;->profiles:Landroid/util/SparseArray;

    iget v8, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v7, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "groups"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 37
    .local v0, "groups":Lorg/json/JSONArray;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 38
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 39
    .local v2, "jg":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 40
    .restart local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    neg-int v7, v7

    iput v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 41
    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    const-string/jumbo v7, "photo_100"

    :goto_2
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 42
    const-string/jumbo v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 43
    iget-object v7, v4, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;->profiles:Landroid/util/SparseArray;

    iget v8, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v7, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    :cond_1
    const-string/jumbo v7, "photo_50"

    goto :goto_2

    .line 45
    .end local v2    # "jg":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;

    move-result-object v0

    return-object v0
.end method
