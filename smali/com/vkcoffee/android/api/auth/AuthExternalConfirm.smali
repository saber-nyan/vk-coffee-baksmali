.class public Lcom/vkcoffee/android/api/auth/AuthExternalConfirm;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AuthExternalConfirm.java"


# annotations
.annotation runtime Lcom/vkcoffee/android/api/annotations/ForceHTTPS;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string/jumbo v0, "auth.externalConfirm"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "sid"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/auth/AuthExternalConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "password"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/auth/AuthExternalConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    if-eqz p3, :cond_0

    .line 17
    const-string/jumbo v0, "code"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/auth/AuthExternalConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    :cond_0
    return-void
.end method
