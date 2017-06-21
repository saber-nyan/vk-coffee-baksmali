.class public Lcom/vkcoffee/android/api/wall/LikesGetList;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "LikesGetList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/vkcoffee/android/api/Callback;

.field private types:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIIIZLjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "parentType"    # I
    .param p3, "oid"    # I
    .param p4, "itemID"    # I
    .param p5, "offset"    # I
    .param p6, "count"    # I
    .param p7, "friends"    # Z
    .param p8, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 19
    const-string/jumbo v1, "likes.getList"

    new-instance v2, Lcom/vkcoffee/android/api/wall/LikesGetList$1;

    invoke-direct {v2}, Lcom/vkcoffee/android/api/wall/LikesGetList$1;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Lcom/vkcoffee/android/data/Parser;)V

    .line 14
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "post"

    aput-object v3, v1, v2

    const-string/jumbo v2, "photo"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "video"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "note"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "topic"

    aput-object v3, v1, v2

    const-string/jumbo v2, "comment"

    aput-object v2, v1, v5

    const/4 v2, 0x6

    const-string/jumbo v3, "market"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/vkcoffee/android/api/wall/LikesGetList;->types:[Ljava/lang/String;

    .line 34
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    .line 35
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "post_ads"

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/wall/LikesGetList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 53
    :goto_0
    const-string/jumbo v1, "owner_id"

    invoke-virtual {p0, v1, p3}, Lcom/vkcoffee/android/api/wall/LikesGetList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "item_id"

    invoke-virtual {v1, v2, p4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "count"

    invoke-virtual {v1, v2, p6}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "offset"

    invoke-virtual {v1, v2, p5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "extended"

    invoke-virtual {v1, v2, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "fields"

    const-string/jumbo v3, "online,photo_200,photo_100,photo_50"

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 54
    if-eqz p7, :cond_0

    .line 55
    const-string/jumbo v1, "friends_only"

    invoke-virtual {p0, v1, v4}, Lcom/vkcoffee/android/api/wall/LikesGetList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 57
    :cond_0
    if-eqz p8, :cond_1

    .line 58
    const-string/jumbo v1, "filter"

    invoke-virtual {p0, v1, p8}, Lcom/vkcoffee/android/api/wall/LikesGetList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 60
    :cond_1
    return-void

    .line 36
    :cond_2
    if-ne p1, v5, :cond_3

    .line 37
    const-string/jumbo v0, ""

    .line 38
    .local v0, "t":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 49
    :goto_1
    :pswitch_0
    const-string/jumbo v1, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "comment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/wall/LikesGetList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 40
    :pswitch_1
    const-string/jumbo v0, "photo_"

    .line 41
    goto :goto_1

    .line 43
    :pswitch_2
    const-string/jumbo v0, "video_"

    .line 44
    goto :goto_1

    .line 46
    :pswitch_3
    const-string/jumbo v0, "topic_"

    goto :goto_1

    .line 51
    .end local v0    # "t":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/vkcoffee/android/api/wall/LikesGetList;->types:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/wall/LikesGetList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
