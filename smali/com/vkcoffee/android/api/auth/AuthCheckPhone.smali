.class public Lcom/vkcoffee/android/api/auth/AuthCheckPhone;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AuthCheckPhone.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 8
    const-string/jumbo v0, "auth.checkPhone"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/auth/AuthCheckPhone;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    const-string/jumbo v0, "client_id"

    const v1, 0x22b2d3

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/auth/AuthCheckPhone;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    const-string/jumbo v0, "client_secret"

    const-string/jumbo v1, "hHbZxrka2uZ6jB1inYsH"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/auth/AuthCheckPhone;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    return-void
.end method
