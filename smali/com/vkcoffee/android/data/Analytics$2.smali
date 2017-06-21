.class final Lcom/vkcoffee/android/data/Analytics$2;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Analytics;->updateDeviceID(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/vkcoffee/android/data/Analytics$2;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 244
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 246
    .local v0, "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->access$302(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0    # "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/data/Analytics$2;->val$onDone:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/vkcoffee/android/data/Analytics$2;->val$onDone:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 263
    :cond_0
    return-void

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "x":Ljava/lang/Exception;
    sget-wide v2, Lcom/vkcoffee/android/VKApplication;->deviceID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->access$202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
