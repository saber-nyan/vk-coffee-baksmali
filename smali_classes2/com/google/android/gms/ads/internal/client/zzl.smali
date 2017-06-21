.class public Lcom/google/android/gms/ads/internal/client/zzl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field public static zzuq:Ljava/lang/String;


# instance fields
.field private zzup:Lcom/google/android/gms/ads/internal/client/zzm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzuq:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ClientApi;->retainReference()V

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzuq:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzl;->zzuq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzm;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to instantiate ClientApi class."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzai;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "No client jar implementation found."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaK(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzai;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    goto :goto_0
.end method


# virtual methods
.method public createAdLoaderBuilder(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzs;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adUnitId"    # Ljava/lang/String;
    .param p3, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p4, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/client/zzm;->createAdLoaderBuilder(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object v0

    return-object v0
.end method

.method public createAdOverlay(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzfv;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzm;->createAdOverlay(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzfv;

    move-result-object v0

    return-object v0
.end method

.method public createBannerAdManager(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .param p3, "adUnitId"    # Ljava/lang/String;
    .param p4, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p5, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzm;->createBannerAdManager(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    return-object v0
.end method

.method public createInAppPurchaseManager(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzge;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzm;->createInAppPurchaseManager(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzge;

    move-result-object v0

    return-object v0
.end method

.method public createInterstitialAdManager(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .param p3, "adUnitId"    # Ljava/lang/String;
    .param p4, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p5, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzm;->createInterstitialAdManager(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    return-object v0
.end method

.method public createNativeAdViewDelegate(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzcj;
    .locals 1
    .param p1, "nativeAdView"    # Landroid/widget/FrameLayout;
    .param p2, "overlayFrame"    # Landroid/widget/FrameLayout;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzm;->createNativeAdViewDelegate(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzcj;

    move-result-object v0

    return-object v0
.end method

.method public createRewardedVideoAd(Landroid/content/Context;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p3, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/client/zzm;->createRewardedVideoAd(Landroid/content/Context;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/reward/client/zzb;

    move-result-object v0

    return-object v0
.end method

.method public getMobileAdsSettingsManager(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzy;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzm;->getMobileAdsSettingsManager(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzy;

    move-result-object v0

    return-object v0
.end method
