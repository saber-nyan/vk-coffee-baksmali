.class public Lcom/vkcoffee/android/api/account/AccountValidateAction;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AccountValidateAction.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    .line 11
    const-string/jumbo v0, "account.validateAction"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v1, "confirm"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/account/AccountValidateAction;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "hash"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountValidateAction;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    return-void

    .line 12
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
