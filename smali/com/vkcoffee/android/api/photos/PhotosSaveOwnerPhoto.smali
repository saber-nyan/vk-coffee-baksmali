.class public Lcom/vkcoffee/android/api/photos/PhotosSaveOwnerPhoto;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PhotosSaveOwnerPhoto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "server"    # Ljava/lang/String;
    .param p3, "photosList"    # Ljava/lang/String;
    .param p4, "hash"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string/jumbo v0, "photos.saveOwnerPhoto"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    if-gez p1, :cond_0

    .line 13
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosSaveOwnerPhoto;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    :cond_0
    const-string/jumbo v0, "server"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/photos/PhotosSaveOwnerPhoto;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "hash"

    invoke-virtual {v0, v1, p4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "photo_sizes"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosSaveOwnerPhoto;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    return-void
.end method
