.class public Lcom/vkcoffee/android/api/users/UsersGetFollowers;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "UsersGetFollowers.java"


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
.method public constructor <init>(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 9
    const-string/jumbo v0, "users.getFollowers"

    const-class v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "online,photo_100,photo_200,photo_50"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/UsersGetFollowers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/users/UsersGetFollowers;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/users/UsersGetFollowers;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/users/UsersGetFollowers;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    return-void
.end method
