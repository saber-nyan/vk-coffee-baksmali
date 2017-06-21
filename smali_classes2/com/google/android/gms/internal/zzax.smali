.class public Lcom/google/android/gms/internal/zzax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzay;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzpV:Ljava/lang/Object;

.field private final zzsB:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/google/android/gms/internal/zzif;",
            "Lcom/google/android/gms/internal/zzau;",
            ">;"
        }
    .end annotation
.end field

.field private final zzsC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzau;",
            ">;"
        }
    .end annotation
.end field

.field private final zzsD:Lcom/google/android/gms/internal/zzeg;

.field private final zzsa:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzeg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzpV:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzsB:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzsC:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzsa:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzax;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzax;->zzsD:Lcom/google/android/gms/internal/zzeg;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;)Lcom/google/android/gms/internal/zzau;
    .locals 1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzax;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Landroid/view/View;)Lcom/google/android/gms/internal/zzau;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Landroid/view/View;)Lcom/google/android/gms/internal/zzau;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzau$zzd;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzau$zzd;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzif;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzax;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzeh;)Lcom/google/android/gms/internal/zzau;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Landroid/view/View;Lcom/google/android/gms/internal/zzeh;)Lcom/google/android/gms/internal/zzau;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzau$zzd;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzau$zzd;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzif;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/zzax;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzeh;)Lcom/google/android/gms/internal/zzau;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/formats/zzh;)Lcom/google/android/gms/internal/zzau;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzax;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzeh;)Lcom/google/android/gms/internal/zzau;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzeh;)Lcom/google/android/gms/internal/zzau;
    .locals 8

    iget-object v7, p0, Lcom/google/android/gms/internal/zzax;->zzpV:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzax;->zzh(Lcom/google/android/gms/internal/zzif;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzsB:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzau;

    monitor-exit v7

    :goto_0
    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzsa:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzax;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaz;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzeh;)V

    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzau;->zza(Lcom/google/android/gms/internal/zzay;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzsB:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzsC:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/zzba;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzsa:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzax;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzax;->zzsD:Lcom/google/android/gms/internal/zzeg;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzba;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzeg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzau;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzau;->zzch()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzsC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzsB:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzif;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzsB:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzau;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzau;->zzch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzi(Lcom/google/android/gms/internal/zzif;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzsB:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzau;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzau;->zzcf()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzj(Lcom/google/android/gms/internal/zzif;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzsB:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzau;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzau;->stop()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzk(Lcom/google/android/gms/internal/zzif;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzsB:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzau;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzau;->pause()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzif;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzsB:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzau;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzau;->resume()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
