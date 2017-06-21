.class public Lcom/vkcoffee/android/api/account/AccountRegisterGoogleNow;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AccountRegisterGoogleNow.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string/jumbo v0, "account.registerGoogleNow"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "auth_code"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountRegisterGoogleNow;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    return-void
.end method
