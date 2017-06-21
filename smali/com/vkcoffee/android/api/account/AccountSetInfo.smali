.class public Lcom/vkcoffee/android/api/account/AccountSetInfo;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AccountSetInfo.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "account.setInfo"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "intro"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountSetInfo;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    const-string/jumbo v0, "v"

    const-string/jumbo v1, "5.46"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/account/AccountSetInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2
    .param p1, "ownPostsDefault"    # Z
    .param p2, "noWallReplies"    # Z

    .prologue
    .line 14
    const-string/jumbo v0, "account.setInfo"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v1, "own_posts_default"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/account/AccountSetInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v1, "no_wall_replies"

    if-eqz p2, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/account/AccountSetInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "v"

    const-string/jumbo v1, "5.46"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/account/AccountSetInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    return-void

    .line 15
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 16
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method
