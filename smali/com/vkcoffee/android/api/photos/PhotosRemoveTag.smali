.class public Lcom/vkcoffee/android/api/photos/PhotosRemoveTag;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "PhotosRemoveTag.java"


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "ownerID"    # I
    .param p2, "photoID"    # I
    .param p3, "tagID"    # I

    .prologue
    .line 10
    const-string/jumbo v0, "photos.removeTag"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosRemoveTag;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "photo_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/photos/PhotosRemoveTag;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "tag_id"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/photos/PhotosRemoveTag;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    return-void
.end method
