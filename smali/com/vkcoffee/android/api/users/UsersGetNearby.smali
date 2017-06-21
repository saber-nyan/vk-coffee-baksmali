.class public Lcom/vkcoffee/android/api/users/UsersGetNearby;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "UsersGetNearby.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(DDIII)V
    .locals 5
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "accuracy"    # I
    .param p6, "radius"    # I
    .param p7, "timeout"    # I

    .prologue
    .line 18
    const-string/jumbo v0, "users.getNearby"

    new-instance v1, Lcom/vkcoffee/android/api/users/UsersGetNearby$1;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/users/UsersGetNearby$1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Lcom/vkcoffee/android/data/Parser;)V

    .line 30
    const-string/jumbo v0, "latitude"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/UsersGetNearby;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "longitude"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 31
    const-string/jumbo v0, "accuracy"

    invoke-virtual {p0, v0, p5}, Lcom/vkcoffee/android/api/users/UsersGetNearby;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 32
    const-string/jumbo v0, "radius"

    invoke-virtual {p0, v0, p6}, Lcom/vkcoffee/android/api/users/UsersGetNearby;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 33
    const-string/jumbo v0, "timeout"

    invoke-virtual {p0, v0, p7}, Lcom/vkcoffee/android/api/users/UsersGetNearby;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 34
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_100,photo_50,common_count,is_friend"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/UsersGetNearby;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 35
    return-void
.end method
