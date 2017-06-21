.class public Lcom/google/android/gms/internal/zzgu;
.super Lcom/google/android/gms/internal/zzgq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zzCf:Lcom/google/android/gms/internal/zzeo;

.field private zzGA:Z

.field private zzGy:Lcom/google/android/gms/internal/zzem;

.field protected zzGz:Lcom/google/android/gms/internal/zzes;

.field private final zzpD:Lcom/google/android/gms/internal/zzjp;

.field private final zzpe:Lcom/google/android/gms/internal/zzcb;

.field private zzpn:Lcom/google/android/gms/internal/zzex;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/internal/zzgr$zza;Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzjp;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/zzgq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzgr$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgu;->zzpn:Lcom/google/android/gms/internal/zzex;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzif$zza;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzCf:Lcom/google/android/gms/internal/zzeo;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgu;->zzpe:Lcom/google/android/gms/internal/zzcb;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgu;->zzpD:Lcom/google/android/gms/internal/zzjp;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgu;)Lcom/google/android/gms/internal/zzjp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzpD:Lcom/google/android/gms/internal/zzjp;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgu;->zzGA:Z

    return p1
.end method

.method private zzgk()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzgq$zza;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzgu$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzgu$1;-><init>(Lcom/google/android/gms/internal/zzgu;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xa

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgu;->zzGg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGA:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzgq$zza;

    const-string/jumbo v2, "View could not be prepared"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzgq$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzgq$zza;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Interrupted while waiting for latch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/zzgq$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzgq$zza;

    const-string/jumbo v2, "Assets not loaded, web view is destroyed"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzgq$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgu;->zzGg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzgq;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGy:Lcom/google/android/gms/internal/zzem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGy:Lcom/google/android/gms/internal/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzem;->cancel()V

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

.method protected zzD(I)Lcom/google/android/gms/internal/zzif;
    .locals 35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgu;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzif$zza;->zzLd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v2, Lcom/google/android/gms/internal/zzif;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzgu;->zzpD:Lcom/google/android/gms/internal/zzjp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBQ:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBR:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHV:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBU:J

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHw:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHT:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    iget-object v14, v6, Lcom/google/android/gms/internal/zzes;->zzCp:Lcom/google/android/gms/internal/zzen;

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    iget-object v15, v6, Lcom/google/android/gms/internal/zzes;->zzCq:Lcom/google/android/gms/internal/zzey;

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzes;->zzCr:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgu;->zzCf:Lcom/google/android/gms/internal/zzeo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzes;->zzCs:Lcom/google/android/gms/internal/zzeq;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHU:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzif$zza;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHS:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzif$zza;->zzKY:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHX:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHY:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzif$zza;->zzKT:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIj:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIk:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIl:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIm:Z

    move/from16 v34, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v34}, Lcom/google/android/gms/internal/zzif;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzjp;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzen;Lcom/google/android/gms/internal/zzey;Ljava/lang/String;Lcom/google/android/gms/internal/zzeo;Lcom/google/android/gms/internal/zzeq;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;Z)V

    return-object v2

    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_2
    const-class v6, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :cond_3
    const/16 v18, 0x0

    goto :goto_3
.end method

.method protected zzh(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzgq$zza;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgu;->zzGg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzgu;->zzi(J)Lcom/google/android/gms/internal/zzem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGy:Lcom/google/android/gms/internal/zzem;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGy:Lcom/google/android/gms/internal/zzem;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgu;->zzCf:Lcom/google/android/gms/internal/zzeo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeo;->zzBO:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzem;->zzc(Ljava/util/List;)Lcom/google/android/gms/internal/zzes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    iget v0, v0, Lcom/google/android/gms/internal/zzes;->zzCo:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/zzgq$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected mediation result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    iget v2, v2, Lcom/google/android/gms/internal/zzes;->zzCo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzgq$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/zzgq$zza;

    const-string/jumbo v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzgq$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzes;->zzCp:Lcom/google/android/gms/internal/zzen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGz:Lcom/google/android/gms/internal/zzes;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzes;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzen;->zzBJ:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgu;->zzgk()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method zzi(J)Lcom/google/android/gms/internal/zzem;
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzCf:Lcom/google/android/gms/internal/zzeo;

    iget v0, v0, Lcom/google/android/gms/internal/zzeo;->zzBX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzeu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgu;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgu;->zzpn:Lcom/google/android/gms/internal/zzex;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzgu;->zzCf:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzuk:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzum:Z

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwY:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x2

    move-wide v8, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzeu;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/internal/zzeo;ZZJJI)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzev;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgu;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgu;->zzpn:Lcom/google/android/gms/internal/zzex;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzgu;->zzCf:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzuk:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzum:Z

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwY:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, p0, Lcom/google/android/gms/internal/zzgu;->zzpe:Lcom/google/android/gms/internal/zzcb;

    move-wide v8, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzev;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/internal/zzeo;ZZJJLcom/google/android/gms/internal/zzcb;)V

    goto :goto_0
.end method
