.class public Lcom/vkcoffee/android/api/photos/PhotosDeleteAlbum;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "PhotosDeleteAlbum.java"


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "aid"    # I
    .param p2, "gid"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "photos.deleteAlbum"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "album_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosDeleteAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    if-lez p2, :cond_0

    .line 11
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/photos/PhotosDeleteAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    :cond_0
    return-void
.end method
