.class public Lcom/vkcoffee/android/api/video/VideoEditAlbum;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "VideoEditAlbum.java"


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "albumID"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "privacy"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string/jumbo v0, "video.editAlbum"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    if-gez p1, :cond_0

    .line 13
    const-string/jumbo v0, "group_id"

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoEditAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/video/VideoEditAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "privacy"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/video/VideoEditAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "album_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/video/VideoEditAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    return-void
.end method
