.class public Lcom/google/android/gms/internal/zzig;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzig$zza;
    }
.end annotation


# instance fields
.field private zzJu:Z

.field private final zzLf:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzig$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzLg:Ljava/lang/String;

.field private final zzLh:Ljava/lang/String;

.field private zzLi:J

.field private zzLj:J

.field private zzLk:J

.field private zzLl:J

.field private zzLm:J

.field private zzLn:J

.field private final zzpV:Ljava/lang/Object;

.field private final zzqV:Lcom/google/android/gms/internal/zzih;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzih;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzpV:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLi:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLj:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzig;->zzJu:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLk:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzig;->zzLl:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLm:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLn:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzig;->zzqV:Lcom/google/android/gms/internal/zzih;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzig;->zzLg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzig;->zzLh:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzLf:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzig;-><init>(Lcom/google/android/gms/internal/zzih;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzig;->zzLg:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzig;->zzLh:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzig;->zzJu:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "treq"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzig;->zzLm:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "tresponse"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzig;->zzLn:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "timp"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzig;->zzLj:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "tload"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzig;->zzLk:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "pcc"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzig;->zzLl:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "tfetch"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzig;->zzLi:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzLf:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzig$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzig$zza;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "tclick"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public zzA(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLn:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzig;->zzJu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqV:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzig;)V

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

.method public zzgS()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLn:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLj:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqV:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzig;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqV:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzih;->zzha()Lcom/google/android/gms/internal/zzii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzii;->zzgS()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgT()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLn:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzig$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzig$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzig$zza;->zzgX()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzig;->zzLf:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLl:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLl:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqV:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzih;->zzha()Lcom/google/android/gms/internal/zzii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzii;->zzgT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqV:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzig;)V

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

.method public zzgU()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLn:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzLf:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzLf:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzig$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzig$zza;->zzgV()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzig$zza;->zzgW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqV:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzig;)V

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

.method public zzk(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLm:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqV:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzih;->zzha()Lcom/google/android/gms/internal/zzii;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLm:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzii;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzl(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzig;->zzLn:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLn:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqV:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzig;)V

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

.method public zzm(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLn:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzig;->zzLi:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqV:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzig;)V

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

.method public zzz(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLn:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLk:J

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLk:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzig;->zzLj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqV:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzig;)V

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
