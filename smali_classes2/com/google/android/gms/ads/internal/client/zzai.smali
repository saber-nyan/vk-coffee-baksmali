.class public Lcom/google/android/gms/ads/internal/client/zzai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdLoaderBuilder(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzs;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adUnitId"    # Ljava/lang/String;
    .param p3, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p4, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzag;-><init>()V

    return-object v0
.end method

.method public createAdOverlay(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzfv;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public createBannerAdManager(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .param p3, "adUnitId"    # Ljava/lang/String;
    .param p4, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p5, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzah;-><init>()V

    return-object v0
.end method

.method public createInAppPurchaseManager(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzge;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public createInterstitialAdManager(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .param p3, "adUnitId"    # Ljava/lang/String;
    .param p4, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p5, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzah;-><init>()V

    return-object v0
.end method

.method public createNativeAdViewDelegate(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzcj;
    .locals 1
    .param p1, "nativeAdView"    # Landroid/widget/FrameLayout;
    .param p2, "overlayFrame"    # Landroid/widget/FrameLayout;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzak;-><init>()V

    return-object v0
.end method

.method public createRewardedVideoAd(Landroid/content/Context;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterCreator"    # Lcom/google/android/gms/internal/zzew;
    .param p3, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzal;-><init>()V

    return-object v0
.end method

.method public getMobileAdsSettingsManager(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzy;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzaj;-><init>()V

    return-object v0
.end method
