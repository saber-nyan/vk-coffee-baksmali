.class public Lcom/vkcoffee/android/api/friends/FriendsEdit;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "FriendsEdit.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "userID"    # I
    .param p2, "lists"    # Ljava/lang/String;

    .prologue
    .line 10
    const-string/jumbo v0, "friends.edit"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/friends/FriendsEdit;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "list_ids"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/friends/FriendsEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    return-void
.end method
