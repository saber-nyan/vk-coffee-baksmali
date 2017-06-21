.class abstract Lcom/google/android/gms/measurement/internal/zzf;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzRC:Landroid/os/Handler;


# instance fields
.field private volatile zzRD:J

.field private final zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

.field private zzaVI:Z

.field private final zzx:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzaVI:Z

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzf$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzf$1;-><init>(Lcom/google/android/gms/measurement/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzx:Ljava/lang/Runnable;

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzf;->zzRC:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzf;->zzRC:Landroid/os/Handler;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/google/android/gms/measurement/internal/zzf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzf;->zzRC:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzf;->zzRC:Landroid/os/Handler;

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzf;->zzRC:Landroid/os/Handler;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzf;J)J
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzRD:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzf;)Lcom/google/android/gms/measurement/internal/zzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzaVI:Z

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzRD:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzf;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzx:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract run()V
.end method

.method public zzbw()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzRD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzt(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->cancel()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzRD:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzf;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzx:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCE()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Failed to schedule delayed post. time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
