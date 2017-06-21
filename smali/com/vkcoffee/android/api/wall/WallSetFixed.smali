.class public Lcom/vkcoffee/android/api/wall/WallSetFixed;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "WallSetFixed.java"


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2
    .param p1, "postID"    # I
    .param p2, "ownerID"    # I
    .param p3, "fixed"    # Z

    .prologue
    .line 11
    if-eqz p3, :cond_0

    const-string/jumbo v0, "wall.pin"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "post_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallSetFixed;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    return-void

    .line 11
    :cond_0
    const-string/jumbo v0, "wall.unpin"

    goto :goto_0
.end method
