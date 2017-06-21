.class public Lcom/vkcoffee/android/api/wall/WallRepost;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "WallRepost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/wall/WallRepost$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/wall/WallRepost$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string/jumbo v0, "wall.repost"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "object"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallRepost;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/wall/WallRepost;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    if-eqz p2, :cond_0

    .line 15
    const-string/jumbo v0, "group_id"

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/wall/WallRepost;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 18
    const-string/jumbo v0, "access_key"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/wall/WallRepost;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    :cond_1
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/wall/WallRepost$Result;
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    :try_start_0
    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 25
    .local v0, "r":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkcoffee/android/api/wall/WallRepost$Result;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/wall/WallRepost$Result;-><init>()V

    .line 26
    .local v1, "res":Lcom/vkcoffee/android/api/wall/WallRepost$Result;
    const-string/jumbo v3, "likes_count"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/vkcoffee/android/api/wall/WallRepost$Result;->likes:I

    .line 27
    const-string/jumbo v3, "reposts_count"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/vkcoffee/android/api/wall/WallRepost$Result;->retweets:I

    .line 28
    const-string/jumbo v3, "post_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/vkcoffee/android/api/wall/WallRepost$Result;->postID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "r":Lorg/json/JSONObject;
    .end local v1    # "res":Lcom/vkcoffee/android/api/wall/WallRepost$Result;
    :goto_0
    return-object v1

    .line 30
    :catch_0
    move-exception v2

    .line 31
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 32
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/wall/WallRepost;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/wall/WallRepost$Result;

    move-result-object v0

    return-object v0
.end method
