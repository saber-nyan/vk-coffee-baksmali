.class public Lcom/vkcoffee/android/api/account/AccountBanUser;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AccountBanUser.java"


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "ban"    # Z

    .prologue
    .line 8
    if-eqz p2, :cond_0

    const-string/jumbo v0, "account.banUser"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountBanUser;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    const-string/jumbo v0, "uid"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountBanUser;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "account.unbanUser"

    goto :goto_0
.end method
