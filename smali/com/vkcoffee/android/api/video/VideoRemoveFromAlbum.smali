.class public Lcom/vkcoffee/android/api/video/VideoRemoveFromAlbum;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "VideoRemoveFromAlbum.java"


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "ownerID"    # I
    .param p2, "videoID"    # I
    .param p3, "targetID"    # I
    .param p4, "albumID"    # I

    .prologue
    .line 10
    const-string/jumbo v0, "video.removeFromAlbum"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/video/VideoRemoveFromAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "album_id"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/video/VideoRemoveFromAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "target_id"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/video/VideoRemoveFromAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    const-string/jumbo v0, "video_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/video/VideoRemoveFromAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    return-void
.end method
