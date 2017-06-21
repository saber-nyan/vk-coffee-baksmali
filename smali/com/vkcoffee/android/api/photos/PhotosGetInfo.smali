.class public Lcom/vkcoffee/android/api/photos/PhotosGetInfo;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PhotosGetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 4
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "akey"    # Ljava/lang/String;

    .prologue
    .line 10
    const-string/jumbo v0, "photos.getById"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v1, "photos"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/photos/PhotosGetInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGetInfo;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    return-void

    .line 11
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 17
    :try_start_0
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 18
    .local v0, "p":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;-><init>()V

    .line 19
    .local v1, "r":Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;
    const-string/jumbo v4, "likes"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "count"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;->likes:I

    .line 20
    const-string/jumbo v4, "comments"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "count"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;->comments:I

    .line 21
    const-string/jumbo v4, "tags"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "count"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;->tags:I

    .line 22
    const-string/jumbo v4, "likes"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "user_likes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v2

    :goto_0
    iput-boolean v4, v1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;->liked:Z

    .line 23
    const-string/jumbo v4, "can_comment"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_1
    iput-boolean v2, v1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;->canComment:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v0    # "p":Lorg/json/JSONObject;
    .end local v1    # "r":Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;
    :goto_2
    return-object v1

    .restart local v0    # "p":Lorg/json/JSONObject;
    .restart local v1    # "r":Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;
    :cond_0
    move v4, v3

    .line 22
    goto :goto_0

    :cond_1
    move v2, v3

    .line 23
    goto :goto_1

    .line 25
    .end local v0    # "p":Lorg/json/JSONObject;
    .end local v1    # "r":Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;
    :catch_0
    move-exception v2

    .line 27
    const/4 v1, 0x0

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
    .line 7
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetInfo;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;

    move-result-object v0

    return-object v0
.end method
