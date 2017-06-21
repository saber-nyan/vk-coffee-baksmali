.class public Lcom/google/android/gms/ads/internal/zzi;
.super Lcom/google/android/gms/ads/internal/client/zzr$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

.field private final zzpL:Lcom/google/android/gms/internal/zzcr;

.field private final zzpM:Lcom/google/android/gms/internal/zzcs;

.field private final zzpN:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcu;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpO:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzct;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final zzpQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpR:Lcom/google/android/gms/ads/internal/client/zzx;

.field private final zzpS:Ljava/lang/String;

.field private final zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzpU:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/zzp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpV:Ljava/lang/Object;

.field private final zzpm:Lcom/google/android/gms/ads/internal/zzd;

.field private final zzpn:Lcom/google/android/gms/internal/zzex;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/zzcr;Lcom/google/android/gms/internal/zzcs;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/client/zzx;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzex;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/ads/internal/client/zzq;",
            "Lcom/google/android/gms/internal/zzcr;",
            "Lcom/google/android/gms/internal/zzcs;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcu;",
            ">;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzct;",
            ">;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Lcom/google/android/gms/ads/internal/client/zzx;",
            "Lcom/google/android/gms/ads/internal/zzd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzr$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpV:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpS:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpn:Lcom/google/android/gms/internal/zzex;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpM:Lcom/google/android/gms/internal/zzcs;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpL:Lcom/google/android/gms/internal/zzcr;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpN:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpO:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzbl()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpQ:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpR:Lcom/google/android/gms/ads/internal/client/zzx;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpm:Lcom/google/android/gms/ads/internal/zzd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzi;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpV:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzi;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpU:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzcr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpL:Lcom/google/android/gms/internal/zzcr;

    return-object v0
.end method

.method private zzbl()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpM:Lcom/google/android/gms/internal/zzcs;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpL:Lcom/google/android/gms/internal/zzcr;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpN:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string/jumbo v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzcs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpM:Lcom/google/android/gms/internal/zzcs;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/zzi;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpN:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/client/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/internal/zzi;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpO:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/internal/zzi;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzbl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/client/zzx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpR:Lcom/google/android/gms/ads/internal/client/zzx;

    return-object v0
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpV:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpU:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzp;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLoading()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpV:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpU:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzp;->isLoading()Z

    move-result v0

    :goto_0
    monitor-exit v2

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected zzbm()Lcom/google/android/gms/ads/internal/zzp;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpm:Lcom/google/android/gms/ads/internal/zzd;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzt(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpS:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpn:Lcom/google/android/gms/internal/zzex;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzi$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzi$1;-><init>(Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzi;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
