.class public Lcom/vkcoffee/android/api/fave/FaveGetUsers;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "FaveGetUsers.java"


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
.method public constructor <init>(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 9
    const-string/jumbo v0, "fave.getUsers"

    const-class v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_100,photo_200,photo_50,online"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/fave/FaveGetUsers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/fave/FaveGetUsers;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    return-void
.end method
