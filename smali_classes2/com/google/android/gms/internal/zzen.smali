.class public final Lcom/google/android/gms/internal/zzen;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field public final zzBA:Ljava/lang/String;

.field public final zzBB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBC:Ljava/lang/String;

.field public final zzBD:Ljava/lang/String;

.field public final zzBE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBG:Ljava/lang/String;

.field public final zzBH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBJ:Ljava/lang/String;

.field public final zzBK:Ljava/lang/String;

.field public final zzBL:Ljava/lang/String;

.field public final zzBM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBN:Ljava/lang/String;

.field public final zzBz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzen;->zzBz:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzen;->zzBA:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzen;->zzBB:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzen;->zzBC:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzen;->zzBD:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzen;->zzBE:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzen;->zzBF:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzen;->zzBG:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzen;->zzBH:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzen;->zzBI:Ljava/util/List;

    iput-object p12, p0, Lcom/google/android/gms/internal/zzen;->zzBJ:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/internal/zzen;->zzBK:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/zzen;->zzBL:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBM:Ljava/util/List;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBA:Ljava/lang/String;

    const-string/jumbo v0, "adapters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBB:Ljava/util/List;

    const-string/jumbo v0, "allocation_id"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBC:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    const-string/jumbo v2, "clickurl"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzet;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBE:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    const-string/jumbo v2, "imp_urls"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzet;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBF:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    const-string/jumbo v2, "video_start_urls"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzet;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBH:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    const-string/jumbo v2, "video_complete_urls"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzet;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBI:Ljava/util/List;

    const-string/jumbo v0, "ad"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBz:Ljava/lang/String;

    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBG:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v0, "class_name"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBD:Ljava/lang/String;

    const-string/jumbo v0, "html_template"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBJ:Ljava/lang/String;

    const-string/jumbo v0, "ad_base_url"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBK:Ljava/lang/String;

    const-string/jumbo v0, "assets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBL:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbP()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    const-string/jumbo v2, "template_ids"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzet;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzBM:Ljava/util/List;

    const-string/jumbo v0, "ad_loader_options"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/zzen;->zzBN:Ljava/lang/String;

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_4
.end method
