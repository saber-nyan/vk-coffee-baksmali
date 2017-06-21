.class public Lcom/vkcoffee/android/api/video/VideoDeleteAlbum;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "VideoDeleteAlbum.java"


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "albumID"    # I

    .prologue
    .line 11
    const-string/jumbo v0, "video.deleteAlbum"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "album_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/video/VideoDeleteAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    if-gez p1, :cond_0

    .line 14
    const-string/jumbo v0, "group_id"

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoDeleteAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    :cond_0
    return-void
.end method
