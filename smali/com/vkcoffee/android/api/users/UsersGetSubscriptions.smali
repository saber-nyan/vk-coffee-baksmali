.class public Lcom/vkcoffee/android/api/users/UsersGetSubscriptions;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "UsersGetSubscriptions.java"


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
    .line 13
    const-string/jumbo v0, "users.getSubscriptions"

    new-instance v1, Lcom/vkcoffee/android/api/users/UsersGetSubscriptions$1;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/users/UsersGetSubscriptions$1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Lcom/vkcoffee/android/data/Parser;)V

    .line 26
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/users/UsersGetSubscriptions;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    const-string/jumbo v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/UsersGetSubscriptions;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_100,photo_50,photo_200,online"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/UsersGetSubscriptions;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    return-void
.end method
