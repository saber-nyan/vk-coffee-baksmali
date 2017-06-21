.class public Lcom/vkcoffee/android/api/photos/PhotosEdit;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "PhotosEdit.java"


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "descr"    # Ljava/lang/String;

    .prologue
    .line 8
    const-string/jumbo v0, "photos.edit"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosEdit;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "caption"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    return-void
.end method
