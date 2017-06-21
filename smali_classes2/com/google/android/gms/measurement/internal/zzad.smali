.class public Lcom/google/android/gms/measurement/internal/zzad;
.super Lcom/google/android/gms/measurement/internal/zzz;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private zzaZa:J

.field private final zzaZb:Ljava/lang/Runnable;

.field private final zzaZc:Lcom/google/android/gms/measurement/internal/zzf;

.field private final zzaZd:Lcom/google/android/gms/measurement/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzw;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzad$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzad$1;-><init>(Lcom/google/android/gms/measurement/internal/zzad;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZb:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzad$2;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzad$2;-><init>(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzw;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZc:Lcom/google/android/gms/measurement/internal/zzf;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzad$3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzad$3;-><init>(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzw;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZd:Lcom/google/android/gms/measurement/internal/zzf;

    return-void
.end method

.method private zzDv()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->mHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzDy()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzp;->zzCK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v2

    const-string/jumbo v3, "Session started, time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXu:Lcom/google/android/gms/measurement/internal/zzt$zza;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzt$zza;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCf()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    const-string/jumbo v1, "auto"

    const-string/jumbo v2, "_s"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private zzDz()V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/32 v10, 0x36ee80

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZa:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    sub-long v2, v0, v10

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZa:J

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZa:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzp;->zzCK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v4

    const-string/jumbo v5, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "_et"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCf()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    const-string/jumbo v3, "auto"

    const-string/jumbo v5, "_e"

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->set(J)V

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZa:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZd:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->get()J

    move-result-wide v2

    sub-long v2, v10, v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzt(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzad;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzDy()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzad;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzad;->zzae(J)V

    return-void
.end method

.method private zzae(J)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzjk()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzDv()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZc:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZd:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZa:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzt;->zzaXt:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzt;->zzaXv:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXu:Lcom/google/android/gms/measurement/internal/zzt$zza;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzt$zza;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXu:Lcom/google/android/gms/measurement/internal/zzt$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt$zza;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZc:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzt;->zzaXs:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->get()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzt(J)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZd:Lcom/google/android/gms/measurement/internal/zzf;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzt(J)V

    goto :goto_0
.end method

.method private zzaf(J)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzjk()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzDv()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZc:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZd:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZa:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZa:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXv:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->set(J)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXu:Lcom/google/android/gms/measurement/internal/zzt$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt$zza;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZb:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzad;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzDz()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzad;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzad;->zzaf(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzAo()Lcom/google/android/gms/measurement/internal/zzp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCd()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCd()V

    return-void
.end method

.method public bridge synthetic zzCe()Lcom/google/android/gms/measurement/internal/zzc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCe()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCf()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCf()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCg()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCg()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCh()Lcom/google/android/gms/measurement/internal/zzg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCh()Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCi()Lcom/google/android/gms/measurement/internal/zzac;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCj()Lcom/google/android/gms/measurement/internal/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCj()Lcom/google/android/gms/measurement/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCk()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCk()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCl()Lcom/google/android/gms/measurement/internal/zzu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCl()Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCm()Lcom/google/android/gms/measurement/internal/zzad;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCm()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCn()Lcom/google/android/gms/measurement/internal/zzv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCo()Lcom/google/android/gms/measurement/internal/zzt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCp()Lcom/google/android/gms/measurement/internal/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCp()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method protected zzDu()V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzDv()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzaZb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzad$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzad$4;-><init>(Lcom/google/android/gms/measurement/internal/zzad;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzv;->zzg(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected zzDw()V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzad$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzad$5;-><init>(Lcom/google/android/gms/measurement/internal/zzad;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzv;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzDx()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCJ()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Application backgrounded. Logging engagement"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->get()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "_et"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCf()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    const-string/jumbo v1, "auto"

    const-string/jumbo v3, "_e"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->set(J)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzad;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzp;->zzCF()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v2

    const-string/jumbo v3, "Not logging non-positive engagement time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected zziJ()V
    .locals 0

    return-void
.end method

.method public bridge synthetic zzjj()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjj()V

    return-void
.end method

.method public bridge synthetic zzjk()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjk()V

    return-void
.end method

.method public bridge synthetic zzjl()Lcom/google/android/gms/internal/zzmq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    return-object v0
.end method
