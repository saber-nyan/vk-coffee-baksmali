.class public Lcom/google/android/gms/internal/zzrp;
.super Ljava/lang/Object;


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static zzbhl:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzanQ:Ljava/lang/String;

.field private final zzbhm:Landroid/os/PowerManager$WakeLock;

.field private zzbhn:Landroid/os/WorkSource;

.field private final zzbho:I

.field private final zzbhp:Ljava/lang/String;

.field private zzbhq:Z

.field private zzbhr:I

.field private zzbhs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "WakeLock"

    sput-object v0, Lcom/google/android/gms/internal/zzrp;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "*gcore*:"

    sput-object v0, Lcom/google/android/gms/internal/zzrp;->zzbhl:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzrp;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move-object v5, v4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzrp;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhq:Z

    const-string/jumbo v0, "Wake lock name can NOT be empty"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzrp;->zzbho:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzrp;->zzbhp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrp;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/google/android/gms/internal/zzni;->zzcV(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.google.android.gms"

    if-eq v0, p5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzrp;->zzbhl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzanQ:Ljava/lang/String;

    :goto_0
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhm:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznj;->zzaA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p5}, Lcom/google/android/gms/internal/zzni;->zzcV(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/common/internal/zzd;->zzakE:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzlz;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzrp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callingPackage is not supposed to be empty for wakelock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp;->zzanQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo p5, "com.google.android.gms"

    :cond_0
    :goto_1
    invoke-static {p1, p5}, Lcom/google/android/gms/internal/zznj;->zzl(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhn:Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhn:Landroid/os/WorkSource;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrp;->zzc(Landroid/os/WorkSource;)V

    :cond_1
    return-void

    :cond_2
    iput-object p3, p0, Lcom/google/android/gms/internal/zzrp;->zzanQ:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    goto :goto_1
.end method

.method private zzfJ(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrp;->zzfK(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzrp;->zzn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    sget-boolean v1, Lcom/google/android/gms/internal/zzrp;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzrp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Release:\n mWakeLockName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrp;->zzanQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n mSecondaryName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrp;->zzbhp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nmReferenceCounted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzrp;->zzbhq:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nreason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n mOpenEventCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzrp;->zzbhs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nuseWithReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\ntrackingName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzrp;->zzbhq:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/zzrp;->zzbhr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzrp;->zzbhr:I

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhq:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhs:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/stats/zzi;->zzrZ()Lcom/google/android/gms/common/stats/zzi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp;->zzbhm:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2, v5}, Lcom/google/android/gms/common/stats/zzg;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrp;->zzanQ:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/zzrp;->zzbho:I

    iget-object v7, p0, Lcom/google/android/gms/internal/zzrp;->zzbhn:Landroid/os/WorkSource;

    invoke-static {v7}, Lcom/google/android/gms/internal/zznj;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/common/stats/zzi;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhs:I

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzfK(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzj(Ljava/lang/String;J)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrp;->zzfK(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzrp;->zzn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    sget-boolean v1, Lcom/google/android/gms/internal/zzrp;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzrp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Acquire:\n mWakeLockName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrp;->zzanQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n mSecondaryName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrp;->zzbhp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nmReferenceCounted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzrp;->zzbhq:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nreason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nmOpenEventCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzrp;->zzbhs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nuseWithReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\ntrackingName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\ntimeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzrp;->zzbhq:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/zzrp;->zzbhr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzrp;->zzbhr:I

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhq:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhs:I

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/stats/zzi;->zzrZ()Lcom/google/android/gms/common/stats/zzi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp;->zzbhm:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2, v5}, Lcom/google/android/gms/common/stats/zzg;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrp;->zzanQ:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/zzrp;->zzbho:I

    iget-object v7, p0, Lcom/google/android/gms/internal/zzrp;->zzbhn:Landroid/os/WorkSource;

    invoke-static {v7}, Lcom/google/android/gms/internal/zznj;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v7

    move-wide v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/common/stats/zzi;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhs:I

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzn(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhq:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzrp;->zzbhp:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzrp;->zzbhp:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public acquire(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/zzne;->zzsg()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhq:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzrp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp;->zzanQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzrp;->zzj(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhm:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public isHeld()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhm:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrp;->zzfJ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhm:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhm:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzrp;->zzbhq:Z

    return-void
.end method

.method public zzc(Landroid/os/WorkSource;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznj;->zzaA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhn:Landroid/os/WorkSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhn:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbhm:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zzbhn:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzrp;->zzbhn:Landroid/os/WorkSource;

    goto :goto_0
.end method
