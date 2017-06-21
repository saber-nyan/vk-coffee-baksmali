.class public Lcom/vkcoffee/android/api/photos/GetFullPhotoList;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "GetFullPhotoList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/vkcoffee/android/api/Callback;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 4
    .param p1, "e"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    const/4 v3, 0x1

    .line 12
    const-string/jumbo v0, "photos.get"

    const-class v1, Lcom/vkcoffee/android/Photo;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    const-string/jumbo v0, "feed"

    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    const-string/jumbo v1, "feed_type"

    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "photo_tag"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/photos/GetFullPhotoList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-lez v0, :cond_2

    const-string/jumbo v0, "user_id"

    :goto_1
    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "extended"

    invoke-virtual {p0, v0, v3}, Lcom/vkcoffee/android/api/photos/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "photo_sizes"

    invoke-virtual {p0, v0, v3}, Lcom/vkcoffee/android/api/photos/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    return-void

    .line 14
    :cond_0
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, "wall_photo"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "photo"

    goto :goto_0

    .line 15
    :cond_2
    const-string/jumbo v0, "group_id"

    goto :goto_1
.end method
