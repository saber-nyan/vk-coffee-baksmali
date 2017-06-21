.class public Lcom/vkcoffee/android/api/wall/WallDelete;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "WallDelete.java"


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

    const-string/jumbo v2, "wall.delete"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "photos.delete"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "video.delete"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/api/wall/WallDelete;->methods:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "type"    # I

    .prologue
    .line 10
    sget-object v0, Lcom/vkcoffee/android/api/wall/WallDelete;->methods:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    if-nez p3, :cond_0

    .line 12
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallDelete;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "post_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 15
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallDelete;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 18
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallDelete;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    :cond_2
    return-void
.end method
