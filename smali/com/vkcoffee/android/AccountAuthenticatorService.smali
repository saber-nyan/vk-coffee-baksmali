.class public Lcom/vkcoffee/android/AccountAuthenticatorService;
.super Landroid/app/Service;
.source "AccountAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/AccountAuthenticatorService$AccountAuthenticatorImpl;
    }
.end annotation


# static fields
.field private static accountAuthenticator:Lcom/vkcoffee/android/AccountAuthenticatorService$AccountAuthenticatorImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    return-void
.end method

.method private getAuthenticator()Lcom/vkcoffee/android/AccountAuthenticatorService$AccountAuthenticatorImpl;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vkcoffee/android/AccountAuthenticatorService;->accountAuthenticator:Lcom/vkcoffee/android/AccountAuthenticatorService$AccountAuthenticatorImpl;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/vkcoffee/android/AccountAuthenticatorService$AccountAuthenticatorImpl;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AccountAuthenticatorService$AccountAuthenticatorImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vkcoffee/android/AccountAuthenticatorService;->accountAuthenticator:Lcom/vkcoffee/android/AccountAuthenticatorService$AccountAuthenticatorImpl;

    .line 32
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/AccountAuthenticatorService;->accountAuthenticator:Lcom/vkcoffee/android/AccountAuthenticatorService$AccountAuthenticatorImpl;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "ret":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/vkcoffee/android/AccountAuthenticatorService;->getAuthenticator()Lcom/vkcoffee/android/AccountAuthenticatorService$AccountAuthenticatorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/AccountAuthenticatorService$AccountAuthenticatorImpl;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 24
    :cond_0
    return-object v0
.end method
