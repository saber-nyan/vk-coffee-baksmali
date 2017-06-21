.class public final Lcom/google/android/gms/internal/zzeo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field public final zzBO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzen;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBP:J

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

.field public final zzBS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBT:Ljava/lang/String;

.field public final zzBU:J

.field public final zzBV:Ljava/lang/String;

.field public final zzBW:I

.field public final zzBX:I

.field public final zzBY:J

.field public zzBZ:I

.field public zzCa:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v11, 0x0

    const-wide/16 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/android/gms/internal/zzin;->zzQ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mediation Response JSON: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "ad_networks"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    move v2, v3

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_2

    new-instance v9, Lcom/google/android/gms/internal/zzen;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/zzen;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v2, :cond_1

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/zzeo;->zza(Lcom/google/android/gms/internal/zzen;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/google/android/gms/internal/zzeo;->zzBZ:I

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzeo;->zzCa:I

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeo;->zzBO:Ljava/util/List;

    const-string/jumbo v0, "qdata"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeo;->zzBT:Ljava/lang/String;

    const-string/jumbo v0, "fs_model_type"

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzeo;->zzBX:I

    const-string/jumbo v0, "timeout_ms"

    invoke-virtual {v6, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzeo;->zzBY:J

    const-string/jumbo v0, "settings"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v2, "ad_network_timeout_millis"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzeo;->zzBP:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v2

    const-string/jumbo v3, "click_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzet;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzeo;->zzBQ:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v2

    const-string/jumbo v3, "imp_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzet;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzeo;->zzBR:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v2

    const-string/jumbo v3, "nofill_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzet;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzeo;->zzBS:Ljava/util/List;

    const-string/jumbo v2, "refresh"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    :goto_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzeo;->zzBU:J

    const-string/jumbo v2, "rewards"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-result-object v0

    if-nez v0, :cond_4

    iput-object v11, p0, Lcom/google/android/gms/internal/zzeo;->zzBV:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzeo;->zzBW:I

    :goto_2
    return-void

    :cond_3
    move-wide v2, v4

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeo;->zzBV:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zzKS:I

    iput v0, p0, Lcom/google/android/gms/internal/zzeo;->zzBW:I

    goto :goto_2

    :cond_5
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzeo;->zzBP:J

    iput-object v11, p0, Lcom/google/android/gms/internal/zzeo;->zzBQ:Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gms/internal/zzeo;->zzBR:Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gms/internal/zzeo;->zzBS:Ljava/util/List;

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzeo;->zzBU:J

    iput-object v11, p0, Lcom/google/android/gms/internal/zzeo;->zzBV:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzeo;->zzBW:I

    goto :goto_2
.end method

.method public constructor <init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JIILjava/lang/String;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzen;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "IIJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeo;->zzBO:Ljava/util/List;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzeo;->zzBP:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeo;->zzBQ:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzeo;->zzBR:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzeo;->zzBS:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzeo;->zzBT:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzeo;->zzBU:J

    iput p10, p0, Lcom/google/android/gms/internal/zzeo;->zzBZ:I

    iput p11, p0, Lcom/google/android/gms/internal/zzeo;->zzCa:I

    iput-object p12, p0, Lcom/google/android/gms/internal/zzeo;->zzBV:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/internal/zzeo;->zzBW:I

    iput p14, p0, Lcom/google/android/gms/internal/zzeo;->zzBX:I

    iput-wide p15, p0, Lcom/google/android/gms/internal/zzeo;->zzBY:J

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzen;)Z
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzen;->zzBB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
