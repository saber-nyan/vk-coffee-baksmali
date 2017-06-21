.class public Lcom/vkcoffee/android/api/account/AccountSetPushSettings;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AccountSetPushSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    const-string/jumbo v1, "account.setPushSettings"

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "deviceID":Ljava/lang/String;
    const-string/jumbo v1, "settings"

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vkcoffee/android/NotificationUtils;->getNotificationSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/account/AccountSetPushSettings;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v1, "device_id"

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/account/AccountSetPushSettings;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method
