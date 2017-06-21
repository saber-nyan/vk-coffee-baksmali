.class public Lcom/vkcoffee/android/api/account/AccountSetPrivacy;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AccountSetPrivacy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string/jumbo v0, "account.setPrivacy"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "key"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountSetPrivacy;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/account/AccountSetPrivacy;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    return-void
.end method
