.class public Lcom/vkcoffee/android/api/DeleteLocCoffee;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "DeleteLocCoffee.java"


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 7
    const-string v0, "photos.edit"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/DeleteLocCoffee;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "delete_place"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 9
    return-void
.end method
