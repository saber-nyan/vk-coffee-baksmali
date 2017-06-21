.class public final Lcom/google/android/gms/common/api/internal/zzj;
.super Lcom/google/android/gms/common/api/GoogleApiClient;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzp$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/zzj$zza;,
        Lcom/google/android/gms/common/api/internal/zzj$zzc;,
        Lcom/google/android/gms/common/api/internal/zzj$zzb;,
        Lcom/google/android/gms/common/api/internal/zzj$zze;,
        Lcom/google/android/gms/common/api/internal/zzj$zzd;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzXG:Ljava/util/concurrent/locks/Lock;

.field private final zzagp:I

.field private final zzagr:Landroid/os/Looper;

.field private final zzags:Lcom/google/android/gms/common/zzc;

.field final zzagt:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzrn;",
            "Lcom/google/android/gms/internal/zzro;",
            ">;"
        }
    .end annotation
.end field

.field final zzahA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzahL:Lcom/google/android/gms/common/internal/zzk;

.field private zzahM:Lcom/google/android/gms/common/api/internal/zzp;

.field final zzahN:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/internal/zza$zza",
            "<**>;>;"
        }
    .end annotation
.end field

.field private volatile zzahO:Z

.field private zzahP:J

.field private zzahQ:J

.field private final zzahR:Lcom/google/android/gms/common/api/internal/zzj$zza;

.field zzahS:Lcom/google/android/gms/common/api/internal/zzj$zzc;

.field final zzahT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field

.field zzahU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzahV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/zzq",
            "<*>;>;"
        }
    .end annotation
.end field

.field final zzahW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/zzj$zze",
            "<*>;>;"
        }
    .end annotation
.end field

.field private zzahX:Lcom/google/android/gms/common/api/zza;

.field private final zzahY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzahZ:Ljava/lang/Integer;

.field final zzahz:Lcom/google/android/gms/common/internal/zzf;

.field zzaia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/zzx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaib:Lcom/google/android/gms/common/api/internal/zzj$zzd;

.field private final zzaic:Lcom/google/android/gms/common/internal/zzk$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/zzc;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/zzc;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzrn;",
            "Lcom/google/android/gms/internal/zzro;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/zzc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahN:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahP:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahQ:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahU:Ljava/util/Set;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahV:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahW:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaia:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzj$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/internal/zzj$1;-><init>(Lcom/google/android/gms/common/api/internal/zzj;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaib:Lcom/google/android/gms/common/api/internal/zzj$zzd;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzj$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/internal/zzj$2;-><init>(Lcom/google/android/gms/common/api/internal/zzj;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaic:Lcom/google/android/gms/common/internal/zzk$zza;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzj;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Lcom/google/android/gms/common/internal/zzk;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaic:Lcom/google/android/gms/common/internal/zzk$zza;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzk$zza;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagr:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzj$zza;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/common/api/internal/zzj$zza;-><init>(Lcom/google/android/gms/common/api/internal/zzj;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahR:Lcom/google/android/gms/common/api/internal/zzj$zza;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzags:Lcom/google/android/gms/common/zzc;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagp:I

    iget v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagp:I

    if-ltz v2, :cond_0

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    :cond_0
    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahA:Ljava/util/Map;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahY:Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_0

    :cond_1
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahz:Lcom/google/android/gms/common/internal/zzf;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagt:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method private resume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static zza(Ljava/lang/Iterable;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->zzmE()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->zznb()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x2

    :cond_2
    :goto_2
    return v3

    :cond_3
    const/4 v3, 0x3

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzj;)Lcom/google/android/gms/common/api/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahX:Lcom/google/android/gms/common/api/zza;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/zzv;Z)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->zzamA:Lcom/google/android/gms/internal/zzmg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzmg;->zzf(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzj$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/common/api/internal/zzj$5;-><init>(Lcom/google/android/gms/common/api/internal/zzj;Lcom/google/android/gms/common/api/internal/zzv;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/common/api/internal/zzj$zze;Lcom/google/android/gms/common/api/zza;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzj$zze",
            "<*>;",
            "Lcom/google/android/gms/common/api/zza;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzj$zzb;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/zzj$zzb;-><init>(Lcom/google/android/gms/common/api/internal/zzj$zze;Lcom/google/android/gms/common/api/zza;Landroid/os/IBinder;Lcom/google/android/gms/common/api/internal/zzj$1;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zza(Lcom/google/android/gms/common/api/internal/zzj$zzd;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzj$zzb;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/zzj$zzb;-><init>(Lcom/google/android/gms/common/api/internal/zzj$zze;Lcom/google/android/gms/common/api/zza;Landroid/os/IBinder;Lcom/google/android/gms/common/api/internal/zzj$1;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zza(Lcom/google/android/gms/common/api/internal/zzj$zzd;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->cancel()V

    invoke-interface {p0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzpa()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/zza;->remove(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zza(Lcom/google/android/gms/common/api/internal/zzj$zzd;)V

    invoke-interface {p0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->cancel()V

    invoke-interface {p0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzpa()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/zza;->remove(I)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzj;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/zzv;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zzj;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/zzv;Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/internal/zzj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzj;->resume()V

    return-void
.end method

.method private zzbB(I)V
    .locals 12

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot use sign-in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzj;->zzbC(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Mode was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzj;->zzbC(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->zzmE()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->zznb()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_5
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagr:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzags:Lcom/google/android/gms/common/zzc;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahz:Lcom/google/android/gms/common/internal/zzf;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahA:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagt:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahY:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zzj;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zzp$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    goto/16 :goto_0

    :pswitch_1
    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-eqz v2, :cond_5

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzd;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagr:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzags:Lcom/google/android/gms/common/zzc;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahz:Lcom/google/android/gms/common/internal/zzf;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahA:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagt:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahY:Ljava/util/ArrayList;

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/common/api/internal/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zzj;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static zzbC(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "SIGN_IN_MODE_NONE"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "SIGN_IN_MODE_REQUIRED"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "SIGN_IN_MODE_OPTIONAL"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/internal/zzj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpD()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/internal/zzj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/internal/zzj;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagp:I

    return v0
.end method

.method private zzpC()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzqR()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzp;->connect()V

    return-void
.end method

.method private zzpD()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagp:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    :goto_1
    const-string/jumbo v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzj;->zzbB(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzqR()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzp;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzj;->zza(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    const-string/jumbo v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzj;->zza(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzj;->zzbB(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzqR()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zzp;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->isConnected()Z

    move-result v0

    const-string/jumbo v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zzv;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    sget-object v3, Lcom/google/android/gms/internal/zzmf;->zzUI:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/gms/common/api/internal/zzj;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/zzv;Z)V

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzj$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/common/api/internal/zzj$3;-><init>(Lcom/google/android/gms/common/api/internal/zzj;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/internal/zzv;)V

    new-instance v3, Lcom/google/android/gms/common/api/internal/zzj$4;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/zzj$4;-><init>(Lcom/google/android/gms/common/api/internal/zzj;Lcom/google/android/gms/common/api/internal/zzv;)V

    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzj;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/zzmf;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahR:Lcom/google/android/gms/common/api/internal/zzj$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_1
.end method

.method public connect()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagp:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zzj;->connect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzj;->zza(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahZ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public connect(I)V
    .locals 3
    .param p1, "signInMode"    # I

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal sign-in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzj;->zzbB(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnect()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzp;->disconnect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zzj;->zzaa(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahV:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzq;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahV:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahN:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzj$zze;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zza(Lcom/google/android/gms/common/api/internal/zzj$zzd;)V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->cancel()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahN:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_3
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpF()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzqQ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahO:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahN:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mUnconsumedRunners.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahW:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zzp;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .prologue
    .local p1, "api":Lcom/google/android/gms/common/api/Api;, "Lcom/google/android/gms/common/api/Api<*>;"
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpB()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot invoke getConnectionResult unless GoogleApiClient is connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzp;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpB()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzafB:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    const-string/jumbo v0, "GoogleApiClientImpl"

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GoogleApiClientImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requested in getConnectionResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not connected but is not present in the failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connections map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was never registered with GoogleApiClient"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagr:Landroid/os/Looper;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "api":Lcom/google/android/gms/common/api/Api;, "Lcom/google/android/gms/common/api/Api<*>;"
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzp;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzp;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public reconnect()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->connect()V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public stopAutoManage(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "lifecycleActivity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagp:I

    if-ltz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/internal/zzw;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzj$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zzj$6;-><init>(Lcom/google/android/gms/common/api/internal/zzj;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagp:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzw;->zzbD(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Api$zzc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/internal/zza$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/zza$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zza$zza;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zza$zza;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahN:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-object p1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzp;->zza(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/api/internal/zzx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaia:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaia:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/api/Api;)Z
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahT:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/common/api/internal/zzu;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzp;->zza(Lcom/google/android/gms/common/api/internal/zzu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zzaa(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzj$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzpa()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzpg()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->cancel()V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahW:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzpe()V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/zzj;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zzb;->zzoT()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahX:Lcom/google/android/gms/common/api/zza;

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/common/api/internal/zzj;->zza(Lcom/google/android/gms/common/api/internal/zzj$zze;Lcom/google/android/gms/common/api/zza;Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahW:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/internal/zza$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/zza$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zza$zza;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpB()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahN:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahN:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahN:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzj$zze;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zzj;->zzb(Lcom/google/android/gms/common/api/internal/zzj$zze;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzagE:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzw(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object p1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzp;->zzb(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2
.end method

.method zzb(Lcom/google/android/gms/common/api/internal/zzj$zze;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/zzj$zze",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahW:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaib:Lcom/google/android/gms/common/api/internal/zzj$zzd;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zza(Lcom/google/android/gms/common/api/internal/zzj$zzd;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/internal/zzx;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaia:Ljava/util/Set;

    if-nez v0, :cond_1

    const-string/jumbo v0, "GoogleApiClientImpl"

    const-string/jumbo v1, "Attempted to remove pending transform when no transforms are registered."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "GoogleApiClientImpl"

    const-string/jumbo v1, "Failed to remove pending transform - this may lead to memory leaks!"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpG()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzp;->zzpj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public zzc(IZ)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpE()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzj$zze;

    if-eqz p2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzpe()V

    :cond_1
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    const-string/jumbo v4, "The connection to Google Play services was lost"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzx(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->zzbT(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzqQ()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpC()V

    :cond_3
    return-void
.end method

.method public zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzags:Lcom/google/android/gms/common/zzc;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/zzc;->zzd(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpF()Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpB()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->zzk(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzqQ()V

    :cond_1
    return-void
.end method

.method public zzi(Landroid/os/Bundle;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahN:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahN:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zza$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zzj;->zzb(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahL:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->zzk(Landroid/os/Bundle;)V

    return-void
.end method

.method public zzoW()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahM:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzp;->zzoW()V

    :cond_0
    return-void
.end method

.method zzpB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahO:Z

    return v0
.end method

.method zzpE()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpB()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahO:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahS:Lcom/google/android/gms/common/api/internal/zzj$zzc;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzj$zzc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zzj$zzc;-><init>(Lcom/google/android/gms/common/api/internal/zzj;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzags:Lcom/google/android/gms/common/zzc;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/common/zzc;)Lcom/google/android/gms/common/api/internal/zzn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzj$zzc;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahS:Lcom/google/android/gms/common/api/internal/zzj$zzc;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahR:Lcom/google/android/gms/common/api/internal/zzj$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahR:Lcom/google/android/gms/common/api/internal/zzj$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zzj$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahP:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zzj$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahR:Lcom/google/android/gms/common/api/internal/zzj$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahR:Lcom/google/android/gms/common/api/internal/zzj$zza;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zzj$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahQ:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zzj$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method zzpF()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpB()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahO:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahR:Lcom/google/android/gms/common/api/internal/zzj$zza;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/zzj$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahR:Lcom/google/android/gms/common/api/internal/zzj$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzj$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahS:Lcom/google/android/gms/common/api/internal/zzj$zzc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahS:Lcom/google/android/gms/common/api/internal/zzj$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzj$zzc;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahS:Lcom/google/android/gms/common/api/internal/zzj$zzc;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method zzpG()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaia:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzaia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzpH()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string/jumbo v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/google/android/gms/common/api/internal/zzj;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzr(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/zzq;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/internal/zzq",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/zzq;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzagr:Landroid/os/Looper;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zzq;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzahV:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzj;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
