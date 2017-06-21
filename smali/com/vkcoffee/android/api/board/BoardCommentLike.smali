.class public Lcom/vkcoffee/android/api/board/BoardCommentLike;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "BoardCommentLike.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;",
        ">;",
        "Lcom/vkcoffee/android/data/ServerKeys;"
    }
.end annotation


# instance fields
.field private result:Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;


# direct methods
.method public constructor <init>(ZII)V
    .locals 2
    .param p1, "isLiked"    # Z
    .param p2, "ownerId"    # I
    .param p3, "commentId"    # I

    .prologue
    .line 26
    if-eqz p1, :cond_0

    const-string/jumbo v0, "likes.delete"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "topic_comment"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/board/BoardCommentLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "item_id"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    new-instance v1, Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v1, p2, p3, v0}, Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;-><init>(IIZ)V

    iput-object v1, p0, Lcom/vkcoffee/android/api/board/BoardCommentLike;->result:Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;

    .line 29
    return-void

    .line 26
    :cond_0
    const-string/jumbo v0, "likes.add"

    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;
    .locals 5
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/api/board/BoardCommentLike;->result:Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;

    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "likes"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;->likeCount:I

    .line 35
    iget-object v1, p0, Lcom/vkcoffee/android/api/board/BoardCommentLike;->result:Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/board/BoardCommentLike;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;

    move-result-object v0

    return-object v0
.end method
