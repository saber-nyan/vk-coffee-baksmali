.class public Lcom/vkcoffee/android/api/wall/WallAddComment;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "WallAddComment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final methods:[Ljava/lang/String;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wall.addComment"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "photos.createComment"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "video.createComment"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "board.addComment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/api/wall/WallAddComment;->methods:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 9
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "replyTo"    # I
    .param p5, "type"    # I

    .prologue
    .line 22
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/api/wall/WallAddComment;-><init>(IILjava/lang/String;IILjava/util/List;Ljava/lang/String;Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IILjava/util/List;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "replyTo"    # I
    .param p5, "type"    # I
    .param p7, "accessKey"    # Ljava/lang/String;
    .param p8, "fromGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p6, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 26
    sget-object v1, Lcom/vkcoffee/android/api/wall/WallAddComment;->methods:[Ljava/lang/String;

    aget-object v1, v1, p5

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 27
    iput p5, p0, Lcom/vkcoffee/android/api/wall/WallAddComment;->type:I

    .line 29
    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    .line 30
    const/4 p4, 0x0

    .line 33
    :cond_0
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/attachments/StickerAttachment;

    if-eqz v1, :cond_1

    .line 34
    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/StickerAttachment;

    .line 35
    .local v0, "att":Lcom/vkcoffee/android/attachments/StickerAttachment;
    new-instance p6, Ljava/util/ArrayList;

    .end local p6    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .restart local p6    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const-string/jumbo v1, "sticker_id"

    iget v2, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/wall/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 37
    iget-object v1, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    const-string/jumbo v1, "sticker_referrer"

    iget-object v2, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/wall/WallAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 42
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/StickerAttachment;
    :cond_1
    if-nez p5, :cond_2

    .line 43
    const-string/jumbo v1, "owner_id"

    invoke-virtual {p0, v1, p1}, Lcom/vkcoffee/android/api/wall/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "post_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "reply_to_comment"

    invoke-virtual {v1, v2, p4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "attachments"

    const-string/jumbo v3, ","

    invoke-static {v3, p6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 46
    :cond_2
    if-ne p5, v6, :cond_3

    .line 47
    const-string/jumbo v1, "owner_id"

    invoke-virtual {p0, v1, p1}, Lcom/vkcoffee/android/api/wall/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "photo_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "reply_to_comment"

    invoke-virtual {v1, v2, p4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "attachments"

    const-string/jumbo v3, ","

    invoke-static {v3, p6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 50
    :cond_3
    const/4 v1, 0x2

    if-ne p5, v1, :cond_4

    .line 51
    const-string/jumbo v1, "owner_id"

    invoke-virtual {p0, v1, p1}, Lcom/vkcoffee/android/api/wall/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "reply_to_comment"

    invoke-virtual {v1, v2, p4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "attachments"

    const-string/jumbo v3, ","

    invoke-static {v3, p6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 54
    :cond_4
    const/4 v1, 0x4

    if-ne p5, v1, :cond_5

    .line 55
    const-string/jumbo v1, "group_id"

    neg-int v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/wall/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "topic_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "text"

    const-string/jumbo v3, "\\[id(\\d+)\\|([^\\]]+)\\]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[post"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|$2]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "attachments"

    const-string/jumbo v3, ","

    invoke-static {v3, p6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 58
    :cond_5
    if-eqz p7, :cond_6

    .line 59
    const-string/jumbo v1, "access_key"

    invoke-virtual {p0, v1, p7}, Lcom/vkcoffee/android/api/wall/WallAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 62
    :cond_6
    if-eqz p8, :cond_7

    .line 63
    const-string/jumbo v1, "from_group"

    invoke-virtual {p0, v1, v6}, Lcom/vkcoffee/android/api/wall/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 65
    :cond_7
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/api/wall/WallAddComment;->callback:Lcom/vkcoffee/android/api/Callback;

    if-eqz v1, :cond_3

    .line 70
    iget v1, p0, Lcom/vkcoffee/android/api/wall/WallAddComment;->type:I

    if-nez v1, :cond_0

    .line 71
    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "comment_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 73
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/api/wall/WallAddComment;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 74
    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_1
    iget v1, p0, Lcom/vkcoffee/android/api/wall/WallAddComment;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 77
    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_2
    iget v1, p0, Lcom/vkcoffee/android/api/wall/WallAddComment;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 80
    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_3
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
    .line 16
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/wall/WallAddComment;->parse(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
