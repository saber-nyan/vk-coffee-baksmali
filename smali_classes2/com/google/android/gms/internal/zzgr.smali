.class public Lcom/google/android/gms/internal/zzgr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgr$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/internal/zzgr$zza;Lcom/google/android/gms/internal/zzcb;)Lcom/google/android/gms/internal/zzit;
    .locals 7

    iget-object v0, p3, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHT:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzgu;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzgu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/internal/zzgr$zza;Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzjp;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AdRenderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzit;->zzgd()Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzuk:Z

    if-eqz v1, :cond_3

    instance-of v0, p2, Lcom/google/android/gms/ads/internal/zzp;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzgv;

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/ads/internal/zzp;

    new-instance v3, Lcom/google/android/gms/internal/zzee;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzee;-><init>()V

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzgv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzp;Lcom/google/android/gms/internal/zzee;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzgr$zza;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid NativeAdManager type. Found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; Required: NativeAdManager."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_1

    :cond_3
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHZ:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzgp;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/internal/zzgp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzgr$zza;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwu:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzne;->zzsk()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzne;->isAtLeastL()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p5}, Lcom/google/android/gms/internal/zzjp;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzui:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzgt;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/internal/zzgt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzgr$zza;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzgs;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/internal/zzgs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzgr$zza;)V

    goto/16 :goto_0
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzht;)Lcom/google/android/gms/internal/zzit;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzhz;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzhz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzht;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AdRenderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzit;->zzgd()Ljava/lang/Object;

    return-object v0
.end method
