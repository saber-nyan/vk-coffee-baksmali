.class public Lcom/vkcoffee/android/api/auth/AuthValidatePhone;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AuthValidatePhone.java"


# annotations
.annotation runtime Lcom/vkcoffee/android/api/annotations/ForceHTTPS;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "voice"    # Z

    .prologue
    .line 13
    const-string/jumbo v0, "auth.validatePhone"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "sid"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/auth/AuthValidatePhone;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/auth/AuthValidatePhone;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    if-eqz p3, :cond_0

    .line 17
    const-string/jumbo v0, "voice"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/auth/AuthValidatePhone;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    :cond_0
    return-void
.end method
