.class public abstract Lcom/google/android/gms/ads/internal/zzb;
.super Lcom/google/android/gms/ads/internal/zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzg;
.implements Lcom/google/android/gms/ads/internal/purchase/zzj;
.implements Lcom/google/android/gms/internal/zzdh;
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final mMessenger:Landroid/os/Messenger;

.field protected final zzpn:Lcom/google/android/gms/internal/zzex;

.field protected transient zzpo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/zzs;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, v1, p6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/zzd;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 3

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/ads/internal/zza;-><init>(Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/zzd;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpn:Lcom/google/android/gms/internal/zzex;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/gms/internal/zzga;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzga;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->mMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpo:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;
    .locals 33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzs$zza;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzs$zza;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v3, 0x1

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzs$zza;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzs$zza;->getHeight()I

    move-result v9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zzs$zza;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v4, v6

    if-lez v3, :cond_0

    add-int v3, v5, v9

    if-lez v3, :cond_0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v4, v3, :cond_0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v5, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v10, 0x5

    invoke-direct {v3, v10}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v10, "x"

    invoke-virtual {v3, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "width"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "height"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "visible"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzih;->zzgZ()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    new-instance v4, Lcom/google/android/gms/internal/zzig;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzs;->zzrj:Ljava/lang/String;

    invoke-direct {v4, v9, v5}, Lcom/google/android/gms/internal/zzig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrs:Lcom/google/android/gms/internal/zzig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrs:Lcom/google/android/gms/internal/zzig;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzig;->zzk(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzs;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/zzir;->zza(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrw:Lcom/google/android/gms/ads/internal/client/zzx;

    if-eqz v2, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrw:Lcom/google/android/gms/ads/internal/client/zzx;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/client/zzx;->getValue()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v22

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v0, v9}, Lcom/google/android/gms/internal/zzih;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzij;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->zzrC:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->zzrC:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v2, "Cannot get correlation id, default to 0."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrx:Lcom/google/android/gms/internal/zzgd;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v4, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzry:Lcom/google/android/gms/internal/zzgh;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzih;->zzhj()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move v15, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpm:Lcom/google/android/gms/ads/internal/zzd;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzd;->zzpy:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfM()Z

    move-result v29

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzs;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzs;->zzrj:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzih;->getSessionId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v13, v13, Lcom/google/android/gms/ads/internal/zzs;->zzrH:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzih;->zzhd()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzb;->mMessenger:Landroid/os/Messenger;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbt;->zzdr()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzri:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrD:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v27, v0

    new-instance v28, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v0, v4, v15, v1}, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;-><init>(ZZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/zzs;->zzca()Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzir;->zzbt()F

    move-result v30

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v15, v15, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/zzir;->zzR(Landroid/content/Context;)I

    move-result v31

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v15, v15, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/zzir;->zzl(Landroid/view/View;)I

    move-result v32

    move-object/from16 v4, p1

    move-object/from16 v15, p2

    invoke-direct/range {v2 .. v32}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;FII)V

    return-object v2

    :cond_4
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x0

    move v15, v2

    goto/16 :goto_4
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCr:Ljava/lang/String;

    goto :goto_0
.end method

.method public onAdClicked()V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzBQ:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->zzrj:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzeo;->zzBQ:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzet;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzif;Ljava/lang/String;ZLjava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzen;->zzBE:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->zzrj:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzen;->zzBE:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzet;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzif;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zza;->onAdClicked()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpl:Lcom/google/android/gms/internal/zzax;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzax;->zzk(Lcom/google/android/gms/internal/zzif;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpl:Lcom/google/android/gms/internal/zzax;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzax;->zzl(Lcom/google/android/gms/internal/zzif;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string/jumbo v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzbW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zzi(Lcom/google/android/gms/internal/zzjp;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzey;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpl:Lcom/google/android/gms/internal/zzax;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzax;->zzk(Lcom/google/android/gms/internal/zzif;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpi:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->pause()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordImpression()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzif;Z)V

    return-void
.end method

.method public resume()V
    .locals 2

    const-string/jumbo v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzbW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zzj(Lcom/google/android/gms/internal/zzjp;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzey;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpi:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->resume()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpl:Lcom/google/android/gms/internal/zzax;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzax;->zzl(Lcom/google/android/gms/internal/zzif;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not resume mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "showInterstitial is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzgd;)V
    .locals 1

    const-string/jumbo v0, "setInAppPurchaseListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrx:Lcom/google/android/gms/internal/zzgd;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzgh;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "setPlayStorePurchaseParams must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/zzk;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzk;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrI:Lcom/google/android/gms/ads/internal/purchase/zzk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzry:Lcom/google/android/gms/internal/zzgh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzih;->zzhc()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzry:Lcom/google/android/gms/internal/zzgh;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->zzrI:Lcom/google/android/gms/ads/internal/purchase/zzk;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/purchase/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/ads/internal/purchase/zzk;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzhn()Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzif;Z)V
    .locals 7

    if-nez p1, :cond_1

    const-string/jumbo v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzc(Lcom/google/android/gms/internal/zzif;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzBR:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/zzs;->zzrj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget-object v6, v3, Lcom/google/android/gms/internal/zzeo;->zzBR:Ljava/util/List;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzet;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzif;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzen;->zzBF:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/zzs;->zzrj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v6, v3, Lcom/google/android/gms/internal/zzen;->zzBF:Ljava/util/List;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzet;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzif;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_0
.end method

.method public zza(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzd;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/ads/internal/purchase/zzd;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrx:Lcom/google/android/gms/internal/zzgd;

    if-nez v1, :cond_5

    const-string/jumbo v1, "InAppPurchaseListener is not set. Try to launch default purchase flow."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzU(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "Google Play Service unavailable, cannot launch default purchase flow."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzry:Lcom/google/android/gms/internal/zzgh;

    if-nez v1, :cond_1

    const-string/jumbo v0, "PlayStorePurchaseListener is not set."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrI:Lcom/google/android/gms/ads/internal/purchase/zzk;

    if-nez v1, :cond_2

    const-string/jumbo v0, "PlayStorePurchaseVerifier is not initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrM:Z

    if-eqz v1, :cond_3

    const-string/jumbo v0, "An in-app purchase request is already in progress, abort"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrM:Z

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzry:Lcom/google/android/gms/internal/zzgh;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzgh;->isValidPurchase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrM:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrM:Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbM()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzNb:Z

    new-instance v4, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzs;->zzrI:Lcom/google/android/gms/ads/internal/purchase/zzk;

    invoke-direct {v4, v5, v6, v0, p0}, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/purchase/zzk;Lcom/google/android/gms/internal/zzgc;Lcom/google/android/gms/ads/internal/purchase/zzj;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrx:Lcom/google/android/gms/internal/zzgd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzgd;->zza(Lcom/google/android/gms/internal/zzgc;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zza(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzry:Lcom/google/android/gms/internal/zzgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/zzs;->zzry:Lcom/google/android/gms/internal/zzgh;

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/purchase/zzg;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzb$1;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/ads/internal/zzb$1;-><init>(Lcom/google/android/gms/ads/internal/zzb;Landroid/content/Intent;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Fail to invoke PlayStorePurchaseListener."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzcb;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaV()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzih;->zzG(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbf;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzbf;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpi:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzq;->cancel()V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput v0, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrL:I

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    move-result-object v0

    const-string/jumbo v1, "seq_num"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHw:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzcb;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "request_id"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHI:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzcb;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "session_id"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHx:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzcb;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHu:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "app_version"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHu:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzcb;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzby()Lcom/google/android/gms/ads/internal/request/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->zzrk:Lcom/google/android/gms/internal/zzan;

    invoke-virtual {v2, v3, v0, v4, p0}, Lcom/google/android/gms/ads/internal/request/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/request/zza$zza;)Lcom/google/android/gms/internal/zzim;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrn:Lcom/google/android/gms/internal/zzim;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzif;Z)Z
    .locals 4

    const-wide/16 v2, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzbW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzif;->zzBU:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpi:Lcom/google/android/gms/ads/internal/zzq;

    iget-wide v2, p2, Lcom/google/android/gms/internal/zzif;->zzBU:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpi:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->zzbw()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzeo;->zzBU:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpi:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzeo;->zzBU:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzif;->zzHT:Z

    if-nez v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/zzif;->errorCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpi:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzq;->zzg(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    goto :goto_0
.end method

.method zza(Lcom/google/android/gms/internal/zzif;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpk:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpk:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpk:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzif;Z)Z

    move-result v0

    return v0

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/internal/zzif;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "_noRefresh"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzif;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzif;->zzCs:Lcom/google/android/gms/internal/zzeq;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzif;->zzCs:Lcom/google/android/gms/internal/zzeq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzeq;->zza(Lcom/google/android/gms/internal/zzep;)V

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/zzif;->zzCs:Lcom/google/android/gms/internal/zzeq;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/google/android/gms/internal/zzif;->zzCs:Lcom/google/android/gms/internal/zzeq;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzeq;->zza(Lcom/google/android/gms/internal/zzep;)V

    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget v1, v0, Lcom/google/android/gms/internal/zzeo;->zzBZ:I

    iget-object v0, p2, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget v0, v0, Lcom/google/android/gms/internal/zzeo;->zzCa:I

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrJ:Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/zzik;->zzg(II)V

    const/4 v0, 0x1

    return v0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected zzaV()Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.permission.INTERNET"

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzir;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzir;->zzI(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public zzaW()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpl:Lcom/google/android/gms/internal/zzax;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzax;->zzi(Lcom/google/android/gms/internal/zzif;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpo:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaQ()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrs:Lcom/google/android/gms/internal/zzig;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzig;->zzgU()V

    return-void
.end method

.method public zzaX()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpo:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaS()V

    return-void
.end method

.method public zzaY()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->onAdClicked()V

    return-void
.end method

.method public zzaZ()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaW()V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzif;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzif;)V

    iget v0, p1, Lcom/google/android/gms/internal/zzif;->errorCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzBS:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/zzs;->zzrj:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iget-object v6, v3, Lcom/google/android/gms/internal/zzeo;->zzBS:Ljava/util/List;

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzet;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzif;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public zzba()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaO()V

    return-void
.end method

.method public zzbb()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaX()V

    return-void
.end method

.method public zzbc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Mediation adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif;->zzCr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzif;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaT()V

    return-void
.end method

.method protected zzc(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzc(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzpo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
