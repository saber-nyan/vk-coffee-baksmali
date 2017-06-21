.class public Lcom/google/android/gms/internal/zzih;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzip$zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzJA:Z

.field private zzJz:Z

.field private final zzLA:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private zzLB:Ljava/lang/Boolean;

.field private zzLC:Z

.field private zzLD:Z

.field private final zzLq:Ljava/lang/String;

.field private final zzLr:Lcom/google/android/gms/internal/zzii;

.field private zzLs:Ljava/math/BigInteger;

.field private final zzLt:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzig;",
            ">;"
        }
    .end annotation
.end field

.field private final zzLu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzik;",
            ">;"
        }
    .end annotation
.end field

.field private zzLv:Z

.field private zzLw:I

.field private zzLx:Lcom/google/android/gms/internal/zzbv;

.field private zzLy:Lcom/google/android/gms/internal/zzbf;

.field private zzLz:Ljava/lang/String;

.field private zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzpV:Ljava/lang/Object;

.field private zzpl:Lcom/google/android/gms/internal/zzax;

.field private zzqA:Z

.field private zzsZ:Lcom/google/android/gms/internal/zzbe;

.field private zzta:Lcom/google/android/gms/internal/zzbd;

.field private final zztb:Lcom/google/android/gms/internal/zzha;

.field private zzzN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzir;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLs:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLt:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLu:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzih;->zzLv:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzih;->zzJz:Z

    iput v2, p0, Lcom/google/android/gms/internal/zzih;->zzLw:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzih;->zzqA:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzLx:Lcom/google/android/gms/internal/zzbv;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzih;->zzJA:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzsZ:Lcom/google/android/gms/internal/zzbe;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzLy:Lcom/google/android/gms/internal/zzbf;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzta:Lcom/google/android/gms/internal/zzbd;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLA:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zztb:Lcom/google/android/gms/internal/zzha;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzLB:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzih;->zzLC:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzih;->zzLD:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzir;->zzhs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLq:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzii;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzLq:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzii;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLr:Lcom/google/android/gms/internal/zzii;

    return-void
.end method


# virtual methods
.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLq:Ljava/lang/String;

    return-object v0
.end method

.method public zzB(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzJA:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzip;->zzb(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzih;->zzJA:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzih;->zzG(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbf;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbf;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "start fetching content..."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzin;->zzaJ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbf;->zzcG()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzC(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzih;->zzLC:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzG(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbf;
    .locals 9

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwj:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzne;->zzsg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzih;->zzgY()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzsZ:Lcom/google/android/gms/internal/zzbe;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzbe;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/zzbe;-><init>(Landroid/app/Application;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzsZ:Lcom/google/android/gms/internal/zzbe;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzta:Lcom/google/android/gms/internal/zzbd;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzbd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzta:Lcom/google/android/gms/internal/zzbd;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLy:Lcom/google/android/gms/internal/zzbf;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzbf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzsZ:Lcom/google/android/gms/internal/zzbe;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzih;->zzta:Lcom/google/android/gms/internal/zzbd;

    new-instance v4, Lcom/google/android/gms/internal/zzha;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzih;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/zzha;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/internal/zzbf;-><init>(Lcom/google/android/gms/internal/zzbe;Lcom/google/android/gms/internal/zzbd;Lcom/google/android/gms/internal/zzha;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLy:Lcom/google/android/gms/internal/zzbf;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLy:Lcom/google/android/gms/internal/zzbf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbf;->zzcG()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLy:Lcom/google/android/gms/internal/zzbf;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzij;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzLr:Lcom/google/android/gms/internal/zzii;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/zzii;->zzc(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLu:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzLu:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzik;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "slots"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLt:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzig;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzig;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "ads"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLt:Ljava/util/HashSet;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzij;->zza(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLt:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public zza(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzJz:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzih;->zzJz:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzip;->zza(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzig;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLt:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzik;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLu:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Ljava/lang/Thread;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zzha;->zza(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzha;

    return-void
.end method

.method public zzaA(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzih;->zzLz:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzip;->zzd(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzqA:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzih;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzip;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzip$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzip;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzip$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzip;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/zzip$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzip;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/zzip$zzb;)Ljava/util/concurrent/Future;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzih;->zza(Ljava/lang/Thread;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzir;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzzN:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzne;->zzsn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzLD:Z

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzax;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzih;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v5, Lcom/google/android/gms/internal/zzeg;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/zzih;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzvB:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v6, v7, v0}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzax;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzeg;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzpl:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzih;->zzhk()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbM()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzz(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzqA:Z

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzih;->zzLB:Ljava/lang/Boolean;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Ljava/lang/Throwable;Z)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzha;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzha;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzha;->zza(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public zzb(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzig;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLt:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzd(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzNb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/zze;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public zze(Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "use_https"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "use_https"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzJz:Z

    const-string/jumbo v0, "webview_cache_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "webview_cache_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/zzih;->zzLw:I

    const-string/jumbo v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzih;->zzB(Z)V

    :cond_0
    const-string/jumbo v0, "content_url_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "content_url_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLz:Ljava/lang/String;

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzJz:Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzih;->zzLw:I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgY()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzJA:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgZ()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLs:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzLs:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzLs:Ljava/math/BigInteger;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzha()Lcom/google/android/gms/internal/zzii;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLr:Lcom/google/android/gms/internal/zzii;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhb()Lcom/google/android/gms/internal/zzbv;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLx:Lcom/google/android/gms/internal/zzbv;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhc()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzLv:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzih;->zzLv:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhd()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzJz:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzLD:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhe()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzzN:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhf()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLz:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhg()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLB:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhh()Lcom/google/android/gms/internal/zzax;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzpl:Lcom/google/android/gms/internal/zzax;

    return-object v0
.end method

.method public zzhi()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzih;->zzLw:I

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwA:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwA:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzih;->zzLw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/internal/zzih;->zzLw:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzip;->zza(Landroid/content/Context;I)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhj()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzLC:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zzhk()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbH()Lcom/google/android/gms/internal/zzbw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbw;->zza(Lcom/google/android/gms/internal/zzbu;)Lcom/google/android/gms/internal/zzbv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLx:Lcom/google/android/gms/internal/zzbv;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cannot initialize CSI reporter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
