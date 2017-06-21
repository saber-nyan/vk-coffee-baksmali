.class public Lcom/vkcoffee/android/api/store/StoreGetFriendsList;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "StoreGetFriendsList.java"


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
.method public constructor <init>(I)V
    .locals 2
    .param p1, "product_id"    # I

    .prologue
    .line 11
    const-string/jumbo v0, "store.getFriendsList"

    const-class v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 12
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "stickers"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/store/StoreGetFriendsList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "source_ids"

    const-string/jumbo v1, "friends"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/store/StoreGetFriendsList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    const-string/jumbo v0, "count"

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/store/StoreGetFriendsList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "product_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/store/StoreGetFriendsList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/store/StoreGetFriendsList;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_200,photo_100,photo_50,online"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/store/StoreGetFriendsList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    return-void
.end method
