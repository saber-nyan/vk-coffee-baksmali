.class public Lcom/vkcoffee/android/api/fave/FaveGetPhotos;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "FaveGetPhotos.java"


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
.method public constructor <init>(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 9
    const-string/jumbo v0, "fave.getPhotos"

    const-class v1, Lcom/vkcoffee/android/Photo;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/fave/FaveGetPhotos;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    const-string/jumbo v0, "photo_sizes"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/fave/FaveGetPhotos;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    return-void
.end method
