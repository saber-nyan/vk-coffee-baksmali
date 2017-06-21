.class public Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "PhotosEditAlbum.java"


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "aid"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "descr"    # Ljava/lang/String;
    .param p4, "owner_id"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "photos.editAlbum"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "album_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "description"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "aid"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "descr"    # Ljava/lang/String;
    .param p4, "privacy"    # Ljava/lang/String;
    .param p5, "privacyComment"    # Ljava/lang/String;
    .param p6, "owner_id"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 17
    const-string/jumbo v0, "privacy_view"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v0, "privacy_comment"

    invoke-virtual {p0, v0, p5}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZI)V
    .locals 2
    .param p1, "aid"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "descr"    # Ljava/lang/String;
    .param p4, "upload_by_admins_only"    # Z
    .param p5, "comments_disabled"    # Z
    .param p6, "owner_id"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 23
    const-string/jumbo v1, "upload_by_admins_only"

    if-eqz p4, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    const-string/jumbo v1, "comments_disabled"

    if-eqz p5, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    return-void

    .line 23
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 24
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method
