.class public Lcom/vkcoffee/android/api/newsfeed/NewsfeedAddBan;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "NewsfeedAddBan.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "newsfeed.addBan"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    if-lez p1, :cond_0

    .line 10
    const-string/jumbo v0, "user_ids"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedAddBan;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    :goto_0
    return-void

    .line 12
    :cond_0
    const-string/jumbo v0, "group_ids"

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedAddBan;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method
