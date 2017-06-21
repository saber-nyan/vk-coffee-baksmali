.class public Lcom/vkcoffee/android/api/wall/WallRestoreComment;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "WallRestoreComment.java"


# static fields
.field private static final methods:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wall.restoreComment"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "photos.restoreComment"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "video.restoreComment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/api/wall/WallRestoreComment;->methods:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "cid"    # I
    .param p4, "type"    # I
    .param p5, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 10
    sget-object v0, Lcom/vkcoffee/android/api/wall/WallRestoreComment;->methods:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    if-eqz p4, :cond_0

    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 13
    :cond_0
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallRestoreComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    :cond_1
    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 17
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallRestoreComment;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    :cond_2
    if-eqz p5, :cond_3

    .line 21
    const-string/jumbo v0, "access_key"

    invoke-virtual {p0, v0, p5}, Lcom/vkcoffee/android/api/wall/WallRestoreComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    :cond_3
    return-void
.end method
