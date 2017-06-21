.class public Lcom/google/android/gms/ads/internal/client/zzab;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzoB:Lcom/google/android/gms/ads/internal/client/zzh;

.field private zzpE:Z

.field private zzpS:Ljava/lang/String;

.field private zztA:Lcom/google/android/gms/ads/AdListener;

.field private zztz:Lcom/google/android/gms/ads/internal/client/zza;

.field private final zzuJ:Lcom/google/android/gms/internal/zzew;

.field private final zzuK:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

.field private zzuM:Ljava/lang/String;

.field private zzuN:Landroid/view/ViewGroup;

.field private zzuO:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

.field private zzuP:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private zzuQ:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private zzuR:Lcom/google/android/gms/ads/Correlator;

.field private zzuS:Z

.field private zzun:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private zzuo:[Lcom/google/android/gms/ads/AdSize;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzcO()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzab;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzcO()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzab;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Lcom/google/android/gms/ads/internal/client/zzu;Z)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzew;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzew;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuJ:Lcom/google/android/gms/internal/zzew;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuN:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzoB:Lcom/google/android/gms/ads/internal/client/zzh;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuK:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuS:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzk;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/ads/internal/client/zzk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/client/zzk;->zzj(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzk;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzpS:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    aget-object v2, v2, v3

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuS:Z

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzab;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    const-string/jumbo v2, "Ads by Google"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/zzab;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Lcom/google/android/gms/ads/internal/client/zzu;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZZ)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzcO()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzab;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzcO()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzab;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V

    return-void
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzi(Z)V

    return-object v0
.end method

.method private static zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzi(Z)V

    return-object v0
.end method

.method private zzdf()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zzaM()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuN:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztA:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzcQ()Lcom/google/android/gms/ads/AdSize;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzpS:Ljava/lang/String;

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzun:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuO:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->getMediationAdapterClassName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuQ:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public isLoading()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->isLoading()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to check if ad is loading."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public recordManualImpression()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuK:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zzaP()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2
    .param p1, "adListener"    # Lcom/google/android/gms/ads/AdListener;

    .prologue
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztA:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzc;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .locals 2
    .param p1, "adSizes"    # [Lcom/google/android/gms/ads/AdSize;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzab;->zza([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzpS:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzpS:Ljava/lang/String;

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2
    .param p1, "appEventListener"    # Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    .prologue
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzun:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzj;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setCorrelator(Lcom/google/android/gms/ads/Correlator;)V
    .locals 2
    .param p1, "correlator"    # Lcom/google/android/gms/ads/Correlator;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuR:Lcom/google/android/gms/ads/Correlator;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuR:Lcom/google/android/gms/ads/Correlator;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzx;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuR:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/Correlator;->zzaF()Lcom/google/android/gms/ads/internal/client/zzo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set correlator."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 2
    .param p1, "inAppPurchaseListener"    # Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuP:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuO:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzgi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzgi;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzgd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 2
    .param p1, "manualImpressionsEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzpE:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzpE:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->setManualImpressionsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set manual impressions."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 2
    .param p1, "onCustomRenderedAdLoadedListener"    # Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuQ:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzcg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcg;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzcf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "playStorePurchaseListener"    # Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuO:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "InAppPurchaseListener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuP:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuM:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzgm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzgm;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzgh;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zza;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztz:Lcom/google/android/gms/ads/internal/client/zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzb;-><init>(Lcom/google/android/gms/ads/internal/client/zza;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzaa;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzab;->zzdg()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzoB:Lcom/google/android/gms/ads/internal/client/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuN:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzaa;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuJ:Lcom/google/android/gms/internal/zzew;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzaa;->zzdb()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzew;->zzg(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs zza([Lcom/google/android/gms/ads/AdSize;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuN:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuS:Z

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzab;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuN:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method zzdg()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzpS:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzab;->zzdh()Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztA:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztA:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzc;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztz:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zztz:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzb;-><init>(Lcom/google/android/gms/ads/internal/client/zza;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzp;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzun:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzj;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzun:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzj;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzw;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuO:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/internal/zzgi;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuO:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzgi;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzgd;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuP:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/internal/zzgm;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuP:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzgm;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuM:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzgh;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuQ:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/internal/zzcg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuQ:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzcg;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzcf;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuR:Lcom/google/android/gms/ads/Correlator;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuR:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/Correlator;->zzaF()Lcom/google/android/gms/ads/internal/client/zzo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzx;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzpE:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->setManualImpressionsEnabled(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzab;->zzdf()V

    return-void
.end method

.method protected zzdh()Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuN:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcT()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuS:Z

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzab;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzpS:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuJ:Lcom/google/android/gms/internal/zzew;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/gms/ads/internal/client/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;)Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    return-object v0
.end method
