.class public abstract Lcom/google/android/gms/internal/zzgn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzit;
.implements Lcom/google/android/gms/internal/zzjq$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzit",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/zzjq$zza;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final zzGc:Lcom/google/android/gms/internal/zzgr$zza;

.field protected final zzGd:Lcom/google/android/gms/internal/zzif$zza;

.field protected zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field private zzGf:Ljava/lang/Runnable;

.field protected final zzGg:Ljava/lang/Object;

.field private zzGh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final zzpD:Lcom/google/android/gms/internal/zzjp;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzgr$zza;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzGg:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzGh:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgn;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgn;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgn;->zzGc:Lcom/google/android/gms/internal/zzgr$zza;

    return-void
.end method

.method private zzD(I)Lcom/google/android/gms/internal/zzif;
    .locals 35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgn;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzif$zza;->zzLd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v2, Lcom/google/android/gms/internal/zzif;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzgn;->zzpD:Lcom/google/android/gms/internal/zzjp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBQ:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBR:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHV:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBU:J

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHw:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHT:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHU:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzif$zza;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHS:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzif$zza;->zzKY:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHX:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHY:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGd:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzif$zza;->zzKT:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIj:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIk:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIl:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIm:Z

    move/from16 v34, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v34}, Lcom/google/android/gms/internal/zzif;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzjp;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzen;Lcom/google/android/gms/internal/zzey;Ljava/lang/String;Lcom/google/android/gms/internal/zzeo;Lcom/google/android/gms/internal/zzeq;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;Z)V

    return-object v2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgn;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzGh:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzGh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zzi(Lcom/google/android/gms/internal/zzjp;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgn;->zzC(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzGf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected zzC(I)V
    .locals 4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v2, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBU:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhO()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzGc:Lcom/google/android/gms/internal/zzgr$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgn;->zzD(I)Lcom/google/android/gms/internal/zzif;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgr$zza;->zzb(Lcom/google/android/gms/internal/zzif;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzjp;Z)V
    .locals 2

    const-string/jumbo v0, "WebView finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzGh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgn;->zzgc()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgn;->zzC(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzGf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final zzga()Ljava/lang/Void;
    .locals 6

    const-string/jumbo v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzgn$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgn$1;-><init>(Lcom/google/android/gms/internal/zzgn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzGf:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgn;->zzGf:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwY:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgn;->zzgb()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract zzgb()V
.end method

.method protected zzgc()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public synthetic zzgd()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgn;->zzga()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
