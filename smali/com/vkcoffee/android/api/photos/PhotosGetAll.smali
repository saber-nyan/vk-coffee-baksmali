.class public Lcom/vkcoffee/android/api/photos/PhotosGetAll;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "PhotosGetAll.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vkcoffee/android/api/photos/PhotosGetAll;-><init>(IIIZ)V

    .line 10
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "skipHidden"    # Z

    .prologue
    const/4 v2, 0x1

    .line 13
    const-string/jumbo v0, "photos.getAll"

    const-class v1, Lcom/vkcoffee/android/Photo;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 14
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetAll;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "extended"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "photo_sizes"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/photos/PhotosGetAll;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    if-eqz p4, :cond_0

    .line 17
    const-string/jumbo v0, "skip_hidden"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/photos/PhotosGetAll;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    const-string/jumbo v0, "need_hidden"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/photos/PhotosGetAll;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method
