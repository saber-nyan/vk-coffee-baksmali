.class public Lcom/google/android/gms/internal/zzif;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzif$zza;
    }
.end annotation


# instance fields
.field public final errorCode:I

.field public final orientation:I

.field public final zzBQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBU:J

.field public final zzCp:Lcom/google/android/gms/internal/zzen;

.field public final zzCq:Lcom/google/android/gms/internal/zzey;

.field public final zzCr:Ljava/lang/String;

.field public final zzCs:Lcom/google/android/gms/internal/zzeq;

.field public final zzED:Lcom/google/android/gms/internal/zzjp;

.field public final zzHS:J

.field public final zzHT:Z

.field public final zzHU:J

.field public final zzHV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzHY:Ljava/lang/String;

.field public final zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final zzHw:Ljava/lang/String;

.field public final zzIj:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzIl:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzIm:Z

.field public final zzKT:Lorg/json/JSONObject;

.field public zzKU:Z

.field public final zzKV:Lcom/google/android/gms/internal/zzeo;

.field public final zzKW:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public final zzKX:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzKY:J

.field public final zzKZ:J

.field public final zzLa:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

.field public zzLb:Z

.field public zzLc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzjp;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzen;Lcom/google/android/gms/internal/zzey;Ljava/lang/String;Lcom/google/android/gms/internal/zzeo;Lcom/google/android/gms/internal/zzeq;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/internal/zzjp;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/zzen;",
            "Lcom/google/android/gms/internal/zzey;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzeo;",
            "Lcom/google/android/gms/internal/zzeq;",
            "J",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/google/android/gms/ads/internal/formats/zzh$zza;",
            "Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzif;->zzLb:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzif;->zzLc:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzif;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzif;->zzj(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzif;->zzBQ:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/zzif;->errorCode:I

    invoke-static {p5}, Lcom/google/android/gms/internal/zzif;->zzj(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzif;->zzBR:Ljava/util/List;

    invoke-static {p6}, Lcom/google/android/gms/internal/zzif;->zzj(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzif;->zzHV:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/zzif;->orientation:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzif;->zzBU:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzif;->zzHw:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/zzif;->zzHT:Z

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzCr:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzKV:Lcom/google/android/gms/internal/zzeo;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzCs:Lcom/google/android/gms/internal/zzeq;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzif;->zzHU:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzKW:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzif;->zzHS:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzif;->zzKY:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzif;->zzKZ:J

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzHY:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzKT:Lorg/json/JSONObject;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzLa:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzIj:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    invoke-static/range {p30 .. p30}, Lcom/google/android/gms/internal/zzif;->zzj(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzif;->zzKX:Ljava/util/List;

    invoke-static/range {p31 .. p31}, Lcom/google/android/gms/internal/zzif;->zzj(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzif;->zzIl:Ljava/util/List;

    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzif;->zzIm:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzen;Lcom/google/android/gms/internal/zzey;Ljava/lang/String;Lcom/google/android/gms/internal/zzeq;Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V
    .locals 35

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBQ:Ljava/util/List;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/gms/internal/zzif$zza;->errorCode:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBR:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHV:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBU:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHw:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHT:Z

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif$zza;->zzKV:Lcom/google/android/gms/internal/zzeo;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHU:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif$zza;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHS:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzif$zza;->zzKY:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzif$zza;->zzKZ:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHY:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif$zza;->zzKT:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIj:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIk:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIk:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIm:Z

    move/from16 v34, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v18, p6

    move-object/from16 v30, p7

    invoke-direct/range {v2 .. v34}, Lcom/google/android/gms/internal/zzif;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzjp;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzen;Lcom/google/android/gms/internal/zzey;Ljava/lang/String;Lcom/google/android/gms/internal/zzeo;Lcom/google/android/gms/internal/zzeq;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method private static zzj(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public zzcv()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjq;->zzcv()Z

    move-result v0

    goto :goto_0
.end method
