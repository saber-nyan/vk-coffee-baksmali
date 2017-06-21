.class public Lcom/google/android/gms/ads/internal/client/zzn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field private static final zzqy:Ljava/lang/Object;

.field private static zzur:Lcom/google/android/gms/ads/internal/client/zzn;


# instance fields
.field private final zzus:Lcom/google/android/gms/ads/internal/util/client/zza;

.field private final zzut:Lcom/google/android/gms/ads/internal/client/zze;

.field private final zzuu:Lcom/google/android/gms/ads/internal/client/zzl;

.field private final zzuv:Lcom/google/android/gms/ads/internal/client/zzaf;

.field private final zzuw:Lcom/google/android/gms/internal/zzcv;

.field private final zzux:Lcom/google/android/gms/ads/internal/reward/client/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzqy:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzn;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzn;->zza(Lcom/google/android/gms/ads/internal/client/zzn;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzus:Lcom/google/android/gms/ads/internal/util/client/zza;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zze;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zze;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzut:Lcom/google/android/gms/ads/internal/client/zze;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzuu:Lcom/google/android/gms/ads/internal/client/zzl;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzuv:Lcom/google/android/gms/ads/internal/client/zzaf;

    new-instance v0, Lcom/google/android/gms/internal/zzcv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzuw:Lcom/google/android/gms/internal/zzcv;

    new-instance v0, Lcom/google/android/gms/ads/internal/reward/client/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzux:Lcom/google/android/gms/ads/internal/reward/client/zzf;

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/ads/internal/client/zzn;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzn;->zzqy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzur:Lcom/google/android/gms/ads/internal/client/zzn;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zzcR()Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzn;->zzqy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzur:Lcom/google/android/gms/ads/internal/client/zzn;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcR()Lcom/google/android/gms/ads/internal/client/zzn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzus:Lcom/google/android/gms/ads/internal/util/client/zza;

    return-object v0
.end method

.method public static zzcT()Lcom/google/android/gms/ads/internal/client/zze;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcR()Lcom/google/android/gms/ads/internal/client/zzn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzut:Lcom/google/android/gms/ads/internal/client/zze;

    return-object v0
.end method

.method public static zzcU()Lcom/google/android/gms/ads/internal/client/zzl;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcR()Lcom/google/android/gms/ads/internal/client/zzn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzuu:Lcom/google/android/gms/ads/internal/client/zzl;

    return-object v0
.end method

.method public static zzcV()Lcom/google/android/gms/ads/internal/client/zzaf;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcR()Lcom/google/android/gms/ads/internal/client/zzn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzuv:Lcom/google/android/gms/ads/internal/client/zzaf;

    return-object v0
.end method

.method public static zzcW()Lcom/google/android/gms/internal/zzcv;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcR()Lcom/google/android/gms/ads/internal/client/zzn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzuw:Lcom/google/android/gms/internal/zzcv;

    return-object v0
.end method

.method public static zzcX()Lcom/google/android/gms/ads/internal/reward/client/zzf;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcR()Lcom/google/android/gms/ads/internal/client/zzn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzux:Lcom/google/android/gms/ads/internal/reward/client/zzf;

    return-object v0
.end method
