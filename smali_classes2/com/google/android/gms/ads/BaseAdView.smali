.class Lcom/google/android/gms/ads/BaseAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field private final zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adViewType"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-static {p2}, Lcom/google/android/gms/ads/BaseAdView;->zze(I)Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/client/zzab;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "adViewType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzab;

    const/4 v1, 0x0

    invoke-static {p3}, Lcom/google/android/gms/ads/BaseAdView;->zze(I)Z

    move-result v2

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzab;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZZ)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "adViewType"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzab;

    const/4 v1, 0x0

    invoke-static {p4}, Lcom/google/android/gms/ads/BaseAdView;->zze(I)Z

    move-result v2

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzab;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZZ)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    return-void
.end method

.method private static zze(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzab;->destroy()V

    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzab;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzab;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzab;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzab;->getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzab;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzab;->isLoading()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2
    .param p1, "adRequest"    # Lcom/google/android/gms/ads/AdRequest;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzaE()Lcom/google/android/gms/ads/internal/client/zzaa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzab;->zza(Lcom/google/android/gms/ads/internal/client/zzaa;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/BaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/BaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/BaseAdView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzab;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzab;->resume()V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2
    .param p1, "adListener"    # Lcom/google/android/gms/ads/AdListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzab;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zza;

    .end local p1    # "adListener":Lcom/google/android/gms/ads/AdListener;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzab;->zza(Lcom/google/android/gms/ads/internal/client/zza;)V

    :cond_0
    :goto_0
    return-void

    .restart local p1    # "adListener":Lcom/google/android/gms/ads/AdListener;
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzab;->zza(Lcom/google/android/gms/ads/internal/client/zza;)V

    goto :goto_0
.end method

.method public setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .locals 3
    .param p1, "adSize"    # Lcom/google/android/gms/ads/AdSize;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzab;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzab;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 1
    .param p1, "inAppPurchaseListener"    # Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzab;->setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    return-void
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "playStorePurchaseListener"    # Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzoJ:Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzab;->setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V

    return-void
.end method
