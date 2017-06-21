.class public Lcom/google/android/gms/common/api/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzp;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzXG:Ljava/util/concurrent/locks/Lock;

.field private final zzagW:Lcom/google/android/gms/common/api/internal/zzj;

.field private final zzagX:Lcom/google/android/gms/common/api/internal/zzl;

.field private final zzagY:Lcom/google/android/gms/common/api/internal/zzl;

.field private final zzagZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/internal/zzl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzagr:Landroid/os/Looper;

.field private final zzaha:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/zzu;",
            ">;"
        }
    .end annotation
.end field

.field private final zzahb:Lcom/google/android/gms/common/api/Api$zzb;

.field private zzahc:Landroid/os/Bundle;

.field private zzahd:Lcom/google/android/gms/common/ConnectionResult;

.field private zzahe:Lcom/google/android/gms/common/ConnectionResult;

.field private zzahf:Z

.field private zzahg:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zzj;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/zzj;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zzc;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzrn;",
            "Lcom/google/android/gms/internal/zzro;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/zzc;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzagZ:Ljava/util/Map;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzaha:Ljava/util/Set;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzahd:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzahf:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zzd;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zzd;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zzd;->zzagr:Landroid/os/Looper;

    const/4 v4, 0x0

    new-instance v15, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v15}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v8, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v8}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zzc;

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$zzb;->zznb()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v3

    :cond_0
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$zzb;->zzmE()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzahb:Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v17, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v17 .. v17}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v10}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v10, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Each API in the apiTypeMap must have a corresponding client in the clients map."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zzc;

    iget-object v4, v2, Lcom/google/android/gms/common/api/internal/zzc;->zzagT:Lcom/google/android/gms/common/api/Api;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v4, v2, Lcom/google/android/gms/common/api/internal/zzc;->zzagT:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Each ClientCallbacks must have a corresponding API in the apiTypeMap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    new-instance v13, Lcom/google/android/gms/common/api/internal/zzd$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/android/gms/common/api/internal/zzd$1;-><init>(Lcom/google/android/gms/common/api/internal/zzd;)V

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/common/api/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zzj;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zzp$zza;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    new-instance v20, Lcom/google/android/gms/common/api/internal/zzd$2;

    invoke-direct/range {v20 .. v21}, Lcom/google/android/gms/common/api/internal/zzd$2;-><init>(Lcom/google/android/gms/common/api/internal/zzd;)V

    new-instance v9, Lcom/google/android/gms/common/api/internal/zzl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v16, p7

    move-object/from16 v18, p9

    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/common/api/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zzj;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zzp$zza;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zzc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzagZ:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zzc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzagZ:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzd;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahd:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzd;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzd;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/zzd;->zzb(IZ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzd;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzd;->zzh(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahf:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/internal/zzd;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method private zzb(IZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zzj;->zzc(IZ)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahd:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method private zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "CompositeGAC"

    const-string/jumbo v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzj;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpo()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/internal/zzd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpm()V

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzc(Lcom/google/android/gms/common/api/internal/zza$zza;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zza$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "+",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zza$zza;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagZ:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagZ:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/internal/zzd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahf:Z

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/internal/zzd;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/internal/zzd;)Lcom/google/android/gms/common/api/internal/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/api/internal/zzd;)Lcom/google/android/gms/common/api/internal/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    return-object v0
.end method

.method private zzh(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahc:Landroid/os/Bundle;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahc:Landroid/os/Bundle;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahc:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private zzpl()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahd:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzl;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzl;->connect()V

    return-void
.end method

.method private zzpm()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahd:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzd;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzd;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpp()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpn()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpo()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzd;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzl;->disconnect()Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahd:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzd;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzl;->disconnect()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahd:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzd;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahd:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahd:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    iget v1, v1, Lcom/google/android/gms/common/api/internal/zzl;->zzair:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    iget v2, v2, Lcom/google/android/gms/common/api/internal/zzl;->zzair:I

    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzd;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method private zzpn()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "CompositeGAC"

    const-string/jumbo v1, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahc:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzj;->zzi(Landroid/os/Bundle;)V

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpo()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private zzpo()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzaha:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzu;->zzna()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzaha:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private zzpp()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzpq()Landroid/app/PendingIntent;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahb:Lcom/google/android/gms/common/api/Api$zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zzj;->getSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahb:Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zzb;->zznc()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public connect()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahf:Z

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpl()V

    return-void
.end method

.method public disconnect()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahd:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zzl;->disconnect()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zzl;->disconnect()Z

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpo()V

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zzl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "anonClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zzl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
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
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagZ:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpp()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpq()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzl;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzl;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zzl;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpk()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpp()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isConnecting()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;
    .locals 4
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzd;->zzc(Lcom/google/android/gms/common/api/internal/zza$zza;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpp()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpq()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/zza$zza;->zzw(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzl;->zza(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzl;->zza(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object p1

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/common/api/internal/zzu;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzd;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzd;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpk()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzaha:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahg:I

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zzl;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;
    .locals 4
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzd;->zzc(Lcom/google/android/gms/common/api/internal/zza$zza;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpp()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpq()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/zza$zza;->zzw(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzl;->zzb(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzl;->zzb(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object p1

    goto :goto_0
.end method

.method public zzoW()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzd;->isConnecting()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zzl;->disconnect()Z

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzahe:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagr:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzd$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zzd$3;-><init>(Lcom/google/android/gms/common/api/internal/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzpo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzpj()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagX:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzl;->zzpj()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzl;->zzpj()V

    return-void
.end method

.method public zzpk()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzagY:Lcom/google/android/gms/common/api/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzl;->isConnected()Z

    move-result v0

    return v0
.end method
