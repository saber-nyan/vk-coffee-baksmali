.class public Lcom/vkcoffee/android/api/photos/PhotosGet;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "PhotosGet.java"


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
.field uid:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "aid"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 16
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/photos/PhotosGet;-><init>(IIIIZ)V

    .line 17
    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "aid"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "rev"    # Z

    .prologue
    const/4 v2, 0x1

    .line 20
    if-eqz p2, :cond_1

    const-string v0, "photos.get"

    :goto_0
    const-class v1, Lcom/vkcoffee/android/Photo;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 21
    iput p1, p0, Lcom/vkcoffee/android/api/photos/PhotosGet;->uid:I

    .line 22
    const-string v0, "album_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/photos/PhotosGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "extended"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/photos/PhotosGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    const-string v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/photos/PhotosGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    invoke-static {}, Lcom/vkcoffee/android/PhotoData;->changedRev()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photoRev"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :goto_1
    const-string v0, "rev"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/photos/PhotosGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    :cond_0
    return-void

    .line 20
    :cond_1
    const-string v0, "photos.getAll"

    goto :goto_0

    .line 25
    :cond_2
    if-eqz p5, :cond_0

    goto :goto_1
.end method
