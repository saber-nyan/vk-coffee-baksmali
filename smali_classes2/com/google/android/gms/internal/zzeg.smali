.class public Lcom/google/android/gms/internal/zzeg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzeg$zza;,
        Lcom/google/android/gms/internal/zzeg$zzd;,
        Lcom/google/android/gms/internal/zzeg$zze;,
        Lcom/google/android/gms/internal/zzeg$zzc;,
        Lcom/google/android/gms/internal/zzeg$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzAY:Ljava/lang/String;

.field private zzAZ:Lcom/google/android/gms/internal/zzeg$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzeg$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzed;",
            ">;"
        }
    .end annotation
.end field

.field private zzBa:Lcom/google/android/gms/internal/zzeg$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzeg$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzed;",
            ">;"
        }
    .end annotation
.end field

.field private zzBb:Lcom/google/android/gms/internal/zzeg$zze;

.field private zzBc:I

.field private final zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzpV:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzpV:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBc:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeg;->zzAY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzeg$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeg$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAZ:Lcom/google/android/gms/internal/zzeg$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzeg$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeg$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBa:Lcom/google/android/gms/internal/zzeg$zzb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzeg$zzb;Lcom/google/android/gms/internal/zzeg$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzeg$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzed;",
            ">;",
            "Lcom/google/android/gms/internal/zzeg$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzed;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeg;->zzAZ:Lcom/google/android/gms/internal/zzeg$zzb;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzeg;->zzBa:Lcom/google/android/gms/internal/zzeg$zzb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeg;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzeg;->zzBc:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeg;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzeg$zze;)Lcom/google/android/gms/internal/zzeg$zze;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg;->zzBb:Lcom/google/android/gms/internal/zzeg$zze;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzpV:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/internal/zzeg$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAZ:Lcom/google/android/gms/internal/zzeg$zzb;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzeg;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBc:I

    return v0
.end method

.method private zzep()Lcom/google/android/gms/internal/zzeg$zze;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzeg$zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzBa:Lcom/google/android/gms/internal/zzeg$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeg$zze;-><init>(Lcom/google/android/gms/internal/zzeg$zzb;)V

    new-instance v1, Lcom/google/android/gms/internal/zzeg$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzeg$1;-><init>(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzeg$zze;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzir;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/internal/zzeg$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBb:Lcom/google/android/gms/internal/zzeg$zze;

    return-object v0
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzed;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzef;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzef;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzan;)V

    return-object v0
.end method

.method protected zzeq()Lcom/google/android/gms/internal/zzeg$zze;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeg;->zzep()Lcom/google/android/gms/internal/zzeg$zze;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzeg$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzeg$2;-><init>(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzeg$zze;)V

    new-instance v2, Lcom/google/android/gms/internal/zzeg$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzeg$3;-><init>(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzeg$zze;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzeg$zze;->zza(Lcom/google/android/gms/internal/zzji$zzc;Lcom/google/android/gms/internal/zzji$zza;)V

    return-object v0
.end method

.method public zzer()Lcom/google/android/gms/internal/zzeg$zzd;
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBb:Lcom/google/android/gms/internal/zzeg$zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBb:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zze;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBc:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeg;->zzeq()Lcom/google/android/gms/internal/zzeg$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBb:Lcom/google/android/gms/internal/zzeg$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBb:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zze;->zzes()Lcom/google/android/gms/internal/zzeg$zzd;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBc:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBb:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zze;->zzes()Lcom/google/android/gms/internal/zzeg$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBc:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBc:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeg;->zzeq()Lcom/google/android/gms/internal/zzeg$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBb:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zze;->zzes()Lcom/google/android/gms/internal/zzeg$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBc:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBb:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zze;->zzes()Lcom/google/android/gms/internal/zzeg$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzBb:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zze;->zzes()Lcom/google/android/gms/internal/zzeg$zzd;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
