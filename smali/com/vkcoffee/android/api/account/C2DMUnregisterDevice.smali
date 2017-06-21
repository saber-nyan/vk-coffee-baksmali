.class public Lcom/vkcoffee/android/api/account/C2DMUnregisterDevice;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "C2DMUnregisterDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    const-string/jumbo v1, "account.unregisterDevice"

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, "deviceID":Ljava/lang/String;
    const-string/jumbo v1, "device_id"

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/account/C2DMUnregisterDevice;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    return-void
.end method
