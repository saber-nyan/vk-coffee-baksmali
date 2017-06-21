.class public Lcom/vkcoffee/android/api/apps/HideNotificationRequest;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "HideNotificationRequest.java"


# direct methods
.method public constructor <init>(ZI)V
    .locals 2
    .param p1, "isAccept"    # Z
    .param p2, "notificationId"    # I

    .prologue
    .line 11
    const-string/jumbo v0, "internal.hideUserNotification"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "notification_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/apps/HideNotificationRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v1, "reason"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "accept"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/apps/HideNotificationRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    return-void

    .line 13
    :cond_0
    const-string/jumbo v0, "decline"

    goto :goto_0
.end method
