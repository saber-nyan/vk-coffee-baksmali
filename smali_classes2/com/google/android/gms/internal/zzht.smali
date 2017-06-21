.class public Lcom/google/android/gms/internal/zzht;
.super Lcom/google/android/gms/ads/internal/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/zzhw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field private static final zzKv:Lcom/google/android/gms/internal/zzew;


# instance fields
.field private final zzKw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzia;",
            ">;"
        }
    .end annotation
.end field

.field private zzKx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzew;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzew;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzht;->zzKv:Lcom/google/android/gms/internal/zzew;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzKw:Ljava/util/Map;

    return-void
.end method

.method private zzc(Lcom/google/android/gms/internal/zzif$zza;)Lcom/google/android/gms/internal/zzif$zza;
    .locals 20

    const-string/jumbo v2, "Creating mediation ad response for non-mediated rewarded ad."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhe;->zzc(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "pubid"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrj:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/internal/zzen;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "com.google.ads.mediation.admob.AdMobAdapter"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/internal/zzen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    new-instance v19, Lcom/google/android/gms/internal/zzeo;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzen;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const-string/jumbo v9, ""

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-wide/16 v17, -0x1

    move-object/from16 v2, v19

    invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/internal/zzeo;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JIILjava/lang/String;IIJ)V

    new-instance v2, Lcom/google/android/gms/internal/zzif$zza;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif$zza;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/gms/internal/zzif$zza;->errorCode:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzif$zza;->zzKY:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzif$zza;->zzKZ:J

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/internal/zzif$zza;->zzKT:Lorg/json/JSONObject;

    move-object/from16 v5, v19

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/zzif$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzeo;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Unable to generate ad state for non-mediated rewarded video."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zzht;->zzd(Lcom/google/android/gms/internal/zzif$zza;)Lcom/google/android/gms/internal/zzif$zza;

    move-result-object v2

    goto :goto_0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzif$zza;)Lcom/google/android/gms/internal/zzif$zza;
    .locals 11

    new-instance v0, Lcom/google/android/gms/internal/zzif$zza;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzif$zza;->zzLd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/gms/internal/zzif$zza;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzif$zza;->zzKY:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/zzif$zza;->zzKZ:J

    iget-object v10, p1, Lcom/google/android/gms/internal/zzif$zza;->zzKT:Lorg/json/JSONObject;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzif$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzeo;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const-string/jumbo v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzKw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzKw:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzia;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzia;->zzgP()Lcom/google/android/gms/internal/zzey;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzia;->zzgP()Lcom/google/android/gms/internal/zzey;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzey;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to destroy adapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    const-string/jumbo v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrn:Lcom/google/android/gms/internal/zzim;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzro:Lcom/google/android/gms/internal/zzit;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzht;->zzKx:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRewardedVideoAdClosed()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzht;->zzaQ()V

    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzht;->zzaR()V

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzht;->zza(Lcom/google/android/gms/internal/zzif;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzht;->zzaS()V

    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->zzrj:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzen;->zzBH:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzet;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzif;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzht;->zzaU()V

    return-void
.end method

.method public pause()V
    .locals 4

    const-string/jumbo v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzKw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzKw:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzia;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzia;->zzgP()Lcom/google/android/gms/internal/zzey;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzia;->zzgP()Lcom/google/android/gms/internal/zzey;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzey;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to pause adapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    const-string/jumbo v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzKw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzKw:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzia;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzia;->zzgP()Lcom/google/android/gms/internal/zzey;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzia;->zzgP()Lcom/google/android/gms/internal/zzey;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzey;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to resume adapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .locals 2

    const-string/jumbo v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzrj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Invalid ad unit id. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzht;->zzKx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzrj:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrj:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/internal/zzb;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzcb;)V
    .locals 5

    iget v0, p1, Lcom/google/android/gms/internal/zzif$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzht$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzht$1;-><init>(Lcom/google/android/gms/internal/zzht;Lcom/google/android/gms/internal/zzif$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrr:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzif$zza;->zzKV:Lcom/google/android/gms/internal/zzeo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzht;->zzc(Lcom/google/android/gms/internal/zzif$zza;)Lcom/google/android/gms/internal/zzif$zza;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrr:Lcom/google/android/gms/internal/zzif$zza;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrL:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbB()Lcom/google/android/gms/internal/zzgr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zzs;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->zzrr:Lcom/google/android/gms/internal/zzif$zza;

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/google/android/gms/internal/zzgr;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzht;)Lcom/google/android/gms/internal/zzit;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzro:Lcom/google/android/gms/internal/zzit;

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzif;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzia;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzKw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzia;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpn:Lcom/google/android/gms/internal/zzex;

    const-string/jumbo v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzht;->zzKv:Lcom/google/android/gms/internal/zzew;

    move-object v2, v1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzia;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/zzex;->zzaf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzey;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/zzia;-><init>(Lcom/google/android/gms/internal/zzey;Lcom/google/android/gms/internal/zzhw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzKw:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to instantiate adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public zzc(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .locals 7
    .param p1    # Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->zzrj:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzen;->zzBI:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzet;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzif;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzBV:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzBV:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget v1, v1, Lcom/google/android/gms/internal/zzeo;->zzBW:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;-><init>(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzht;->zza(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    return-void
.end method

.method public zzgL()V
    .locals 2

    const-string/jumbo v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzht;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzht;->zzKx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzht;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzia;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzia;->zzgP()Lcom/google/android/gms/internal/zzey;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzia;->zzgP()Lcom/google/android/gms/internal/zzey;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzey;->showVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call showVideo."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzgM()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzht;->onAdClicked()V

    return-void
.end method
