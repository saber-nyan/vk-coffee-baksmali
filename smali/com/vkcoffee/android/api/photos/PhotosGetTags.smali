.class public Lcom/vkcoffee/android/api/photos/PhotosGetTags;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PhotosGetTags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/PhotoTag;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string/jumbo v0, "photos.getTags"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetTags;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    if-eqz p3, :cond_0

    .line 17
    const-string/jumbo v0, "access_key"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/photos/PhotosGetTags;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    :cond_0
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
    .line 11
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetTags;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/PhotoTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v4, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/PhotoTag;>;"
    const-string/jumbo v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 25
    .local v2, "r":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 26
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 27
    .local v1, "j":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkcoffee/android/PhotoTag;

    invoke-direct {v3}, Lcom/vkcoffee/android/PhotoTag;-><init>()V

    .line 28
    .local v3, "t":Lcom/vkcoffee/android/PhotoTag;
    const-string/jumbo v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkcoffee/android/PhotoTag;->id:I

    .line 29
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkcoffee/android/PhotoTag;->userID:I

    .line 30
    const-string/jumbo v5, "x"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/vkcoffee/android/PhotoTag;->x1:D

    .line 31
    const-string/jumbo v5, "y"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/vkcoffee/android/PhotoTag;->y1:D

    .line 32
    const-string/jumbo v5, "x2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/vkcoffee/android/PhotoTag;->x2:D

    .line 33
    const-string/jumbo v5, "y2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/vkcoffee/android/PhotoTag;->y2:D

    .line 34
    const-string/jumbo v5, "tagged_name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkcoffee/android/PhotoTag;->userName:Ljava/lang/String;

    .line 35
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "i":I
    .end local v1    # "j":Lorg/json/JSONObject;
    .end local v2    # "r":Lorg/json/JSONArray;
    .end local v3    # "t":Lcom/vkcoffee/android/PhotoTag;
    .end local v4    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/PhotoTag;>;"
    :catch_0
    move-exception v5

    .line 40
    const/4 v4, 0x0

    :cond_0
    return-object v4
.end method
