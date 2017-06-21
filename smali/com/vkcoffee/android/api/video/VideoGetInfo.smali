.class public Lcom/vkcoffee/android/api/video/VideoGetInfo;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "VideoGetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final CODE:Ljava/lang/String; = "return {t:API.video.getTags({video_id:%1$d,owner_id:%2$d}),l:API.likes.getList({type:\"video\",item_id:%1$d,owner_id:%2$d,count:1}).count,il:API.likes.isLiked({type:\"video\",item_id:%1$d,owner_id:%2$d})};"


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .param p1, "oid"    # I
    .param p2, "vid"    # I

    .prologue
    .line 19
    const-string/jumbo v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "code"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "return {t:API.video.getTags({video_id:%1$d,owner_id:%2$d}),l:API.likes.getList({type:\"video\",item_id:%1$d,owner_id:%2$d,count:1}).count,il:API.likes.isLiked({type:\"video\",item_id:%1$d,owner_id:%2$d})};"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoGetInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    .line 25
    :try_start_0
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "t"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 26
    .local v6, "tags":Lorg/json/JSONArray;
    const/4 v1, -0x1

    .line 27
    .local v1, "myTagID":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v4, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_1

    .line 29
    new-instance v2, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v2}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 30
    .local v2, "p":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 31
    .local v5, "tag":Lorg/json/JSONObject;
    const-string/jumbo v9, "user_id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 32
    const-string/jumbo v9, "tagged_name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 33
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget v9, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    sget v10, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v9, v10, :cond_0

    .line 35
    const-string/jumbo v9, "tag_id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v5    # "tag":Lorg/json/JSONObject;
    :cond_1
    new-instance v3, Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;

    invoke-direct {v3}, Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;-><init>()V

    .line 39
    .local v3, "r":Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;
    iput-object v4, v3, Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;->tags:Ljava/util/ArrayList;

    .line 40
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "l"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;->numLikes:I

    .line 41
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "il"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "liked"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_2

    :goto_1
    iput-boolean v8, v3, Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;->isLiked:Z

    .line 42
    iput v1, v3, Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;->myTagID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "i":I
    .end local v1    # "myTagID":I
    .end local v3    # "r":Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;
    .end local v4    # "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v6    # "tags":Lorg/json/JSONArray;
    :goto_2
    return-object v3

    .line 41
    .restart local v0    # "i":I
    .restart local v1    # "myTagID":I
    .restart local v3    # "r":Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;
    .restart local v4    # "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v6    # "tags":Lorg/json/JSONArray;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 44
    .end local v0    # "i":I
    .end local v1    # "myTagID":I
    .end local v3    # "r":Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;
    .end local v4    # "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v6    # "tags":Lorg/json/JSONArray;
    :catch_0
    move-exception v7

    .line 45
    .local v7, "x":Ljava/lang/Exception;
    const-string/jumbo v8, "vk"

    invoke-static {v8, v7}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    const/4 v3, 0x0

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
    .line 14
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/video/VideoGetInfo;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;

    move-result-object v0

    return-object v0
.end method
