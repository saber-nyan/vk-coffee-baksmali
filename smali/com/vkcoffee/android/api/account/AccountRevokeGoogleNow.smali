.class public Lcom/vkcoffee/android/api/account/AccountRevokeGoogleNow;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AccountRevokeGoogleNow.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string/jumbo v0, "account.revokeGoogleNow"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "old_access_token"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountRevokeGoogleNow;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    return-void
.end method
