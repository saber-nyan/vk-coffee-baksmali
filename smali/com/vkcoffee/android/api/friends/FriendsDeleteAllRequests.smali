.class public Lcom/vkcoffee/android/api/friends/FriendsDeleteAllRequests;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "FriendsDeleteAllRequests.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "friends.deleteAllRequests"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
