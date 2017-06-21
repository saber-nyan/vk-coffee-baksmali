.class public Lcom/vkcoffee/android/api/wall/WallSubscribe;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "WallSubscribe.java"


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "ownerID"    # I
    .param p2, "subscribe"    # Z

    .prologue
    .line 11
    if-eqz p2, :cond_0

    const-string/jumbo v0, "wall.subscribe"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallSubscribe;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    return-void

    .line 11
    :cond_0
    const-string/jumbo v0, "wall.unsubscribe"

    goto :goto_0
.end method
