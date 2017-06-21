.class public final Lcom/google/android/gms/internal/zzhe;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field private static final zzJg:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/gms/internal/zzhe;->zzJg:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private static zzL(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 39

    :try_start_0
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "ad_base_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "ad_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "ad_size"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHz:I

    if-eqz v4, :cond_1

    const/16 v27, 0x1

    :goto_0
    if-eqz v27, :cond_2

    const-string/jumbo v4, "ad_json"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-wide/16 v20, -0x1

    const-string/jumbo v4, "debug_dialog"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v0, v8

    move-wide/from16 v16, v0

    :goto_2
    const-string/jumbo v4, "orientation"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v18, -0x1

    const-string/jumbo v8, "portrait"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzis;->zzhw()I

    move-result v18

    :cond_0
    :goto_3
    const/4 v4, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string/jumbo v4, "Could not parse the mediation config: Missing required ad_base_url field"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :goto_4
    return-object v4

    :cond_1
    const/16 v27, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "ad_html"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-wide/16 v16, -0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v8, "landscape"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzis;->zzhv()I

    move-result v18

    goto :goto_3

    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v12}, Lcom/google/android/gms/internal/zzhd;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzhi;Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzhc;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    iget-wide v0, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHX:J

    move-wide/from16 v20, v0

    :goto_5
    const-string/jumbo v5, "click_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_d

    const/4 v8, 0x0

    :goto_6
    if-eqz v5, :cond_6

    invoke-static {v5, v8}, Lcom/google/android/gms/internal/zzhe;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :cond_6
    const-string/jumbo v5, "impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_e

    const/4 v9, 0x0

    :goto_7
    if-eqz v5, :cond_7

    invoke-static {v5, v9}, Lcom/google/android/gms/internal/zzhe;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    :cond_7
    const-string/jumbo v5, "manual_impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_f

    const/4 v15, 0x0

    :goto_8
    if-eqz v5, :cond_8

    invoke-static {v5, v15}, Lcom/google/android/gms/internal/zzhe;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    :cond_8
    if-eqz v4, :cond_10

    iget v5, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    const/4 v10, -0x1

    if-eq v5, v10, :cond_9

    iget v0, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move/from16 v18, v0

    :cond_9
    iget-wide v10, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHS:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_10

    iget-wide v10, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHS:J

    :goto_9
    const-string/jumbo v4, "active_view"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    const-string/jumbo v4, "ad_is_javascript"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_a

    const-string/jumbo v4, "ad_passback_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :cond_a
    const-string/jumbo v4, "mediation"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string/jumbo v4, "custom_render_allowed"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string/jumbo v4, "content_url_opted_out"

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string/jumbo v4, "prefetch"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v30

    const-string/jumbo v4, "oauth2_token_status"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v31

    const-string/jumbo v4, "refresh_interval_milliseconds"

    const-wide/16 v16, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string/jumbo v4, "mediation_config_cache_time_milliseconds"

    const-wide/16 v32, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v32

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string/jumbo v4, "gws_query_id"

    const-string/jumbo v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v4, "height"

    const-string/jumbo v5, "fluid"

    const-string/jumbo v33, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    const-string/jumbo v4, "native_express"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v34

    const-string/jumbo v4, "video_start_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzhe;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v36

    const-string/jumbo v4, "video_complete_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzhe;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v37

    const-string/jumbo v4, "rewards"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-result-object v35

    const-string/jumbo v4, "use_displayed_impression"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v38

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHB:Z

    move/from16 v28, v0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v38}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZILjava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not parse the mediation config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto/16 :goto_4

    :cond_b
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not parse the mediation config: Missing required "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v27, :cond_c

    const-string/jumbo v4, "ad_json"

    :goto_a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ad_url"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto/16 :goto_4

    :cond_c
    const-string/jumbo v4, "ad_html"

    goto :goto_a

    :cond_d
    iget-object v8, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBQ:Ljava/util/List;

    goto/16 :goto_6

    :cond_e
    iget-object v9, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBR:Ljava/util/List;

    goto/16 :goto_7

    :cond_f
    iget-object v15, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHV:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :cond_10
    move-wide/from16 v10, v16

    goto/16 :goto_9

    :cond_11
    move-object v7, v5

    goto/16 :goto_5
.end method

.method private static zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzhj;Lcom/google/android/gms/internal/zzhn$zza;Landroid/location/Location;Lcom/google/android/gms/internal/zzbm;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            "Lcom/google/android/gms/internal/zzhj;",
            "Lcom/google/android/gms/internal/zzhn$zza;",
            "Landroid/location/Location;",
            "Lcom/google/android/gms/internal/zzbm;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "eid"

    const-string/jumbo v3, ","

    move-object/from16 v0, p8

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHs:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ad_pos"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHs:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zzhe;->zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    const-string/jumbo v2, "format"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzuh:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "smart_w"

    const-string/jumbo v3, "full"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "smart_h"

    const-string/jumbo v3, "auto"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzul:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "fluid"

    const-string/jumbo v3, "height"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzuj:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v2, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzuj:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v7, v6

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_8

    aget-object v8, v6, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "|"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v9, -0x1

    if-ne v2, v9, :cond_6

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v2, v2

    iget v9, p2, Lcom/google/android/gms/internal/zzhj;->zzHF:F

    div-float/2addr v2, v9

    float-to-int v2, v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v9, -0x2

    if-ne v2, v9, :cond_7

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v2, v2

    iget v8, p2, Lcom/google/android/gms/internal/zzhj;->zzHF:F

    div-float/2addr v2, v8

    float-to-int v2, v2

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_6
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    goto :goto_1

    :cond_7
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    goto :goto_2

    :cond_8
    const-string/jumbo v2, "sz"

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHz:I

    if-eqz v2, :cond_a

    const-string/jumbo v2, "native_version"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHz:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzum:Z

    if-nez v2, :cond_a

    const-string/jumbo v2, "native_templates"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrH:Ljava/util/List;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "native_image_orientation"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrD:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzhe;->zzc(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHK:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "native_custom_templates"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHK:Ljava/util/List;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string/jumbo v2, "slotname"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrj:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "pn"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHu:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_b

    const-string/jumbo v2, "vc"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHu:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string/jumbo v2, "ms"

    move-object/from16 v0, p7

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "seq_num"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHw:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "session_id"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHx:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "js"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, p2, p3}, Lcom/google/android/gms/internal/zzhe;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzhj;Lcom/google/android/gms/internal/zzhn$zza;)V

    const-string/jumbo v2, "platform"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "submodel"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_c

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztK:Landroid/location/Location;

    if-eqz v2, :cond_c

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztK:Landroid/location/Location;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zzhe;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_c
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_d

    const-string/jumbo v2, "quality_signals"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHy:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_e

    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHB:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "forceHttps"

    iget-boolean v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHB:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    if-eqz p9, :cond_f

    const-string/jumbo v2, "content_info"

    move-object/from16 v0, p9

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_19

    const-string/jumbo v2, "u_sd"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHF:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sh"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sw"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_11

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHG:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_10

    :try_start_1
    const-string/jumbo v2, "view_hierarchy"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHG:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_10
    :goto_4
    :try_start_2
    const-string/jumbo v2, "correlation_id"

    iget-wide v6, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHH:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_12

    const-string/jumbo v2, "request_id"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHI:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_13

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHM:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    if-eqz v2, :cond_13

    const-string/jumbo v2, "capability"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHM:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    move-object/from16 v0, p6

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzhe;->zza(Ljava/util/HashMap;Ljava/lang/String;)V

    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_14

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHN:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string/jumbo v2, "anchor"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHN:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_15

    const-string/jumbo v2, "avol"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHO:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_16

    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHP:I

    if-lez v2, :cond_16

    const-string/jumbo v2, "target_api"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHP:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_17

    const-string/jumbo v3, "scroll_index"

    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHQ:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1a

    const/4 v2, -0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzin;->zzQ(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzir;->zzG(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ad Request JSON: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    :cond_18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzir;->zzG(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_6
    return-object v2

    :cond_19
    const-string/jumbo v2, "u_sd"

    iget v3, p2, Lcom/google/android/gms/internal/zzhj;->zzHF:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sh"

    iget v3, p2, Lcom/google/android/gms/internal/zzhj;->zzHE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sw"

    iget v3, p2, Lcom/google/android/gms/internal/zzhj;->zzHD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Problem serializing ad request to JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_6

    :catch_1
    move-exception v2

    :try_start_3
    const-string/jumbo v3, "Problem serializing view hierarchy to JSON"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_1a
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHQ:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5
.end method

.method private static zza(Ljava/util/HashMap;Landroid/location/Location;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    const-wide v6, 0x416312d000000000L    # 1.0E7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "radius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "uule"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            ")V"
        }
    .end annotation

    const/4 v6, -0x1

    invoke-static {}, Lcom/google/android/gms/internal/zzil;->zzhm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "abf"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztC:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "cust_age"

    sget-object v1, Lcom/google/android/gms/internal/zzhe;->zzJg:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztC:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "extras"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztD:I

    if-eq v0, v6, :cond_3

    const-string/jumbo v0, "cust_gender"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztD:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztE:Ljava/util/List;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "kw"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztE:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztG:I

    if-eq v0, v6, :cond_5

    const-string/jumbo v0, "tag_for_child_directed_treatment"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztG:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztF:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "adtest"

    const-string/jumbo v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztH:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "d_imp_hdr"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "ppid"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztI:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztJ:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztJ:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzhe;->zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;)V

    :cond_9
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztL:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string/jumbo v0, "url"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztN:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    const-string/jumbo v0, "custom_targeting"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztN:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztO:Ljava/util/List;

    if-eqz v0, :cond_c

    const-string/jumbo v0, "category_exclusions"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztO:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztP:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string/jumbo v0, "request_agent"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztP:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztQ:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string/jumbo v0, "request_pkg"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztQ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_f

    const-string/jumbo v0, "is_designed_for_families"

    iget-boolean v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztR:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvd:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "acolor"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvd:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhe;->zzL(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "bgcolor"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->backgroundColor:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhe;->zzL(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzve:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvf:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "gradientto"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzve:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhe;->zzL(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "gradientfrom"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvf:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhe;->zzL(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvg:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "bcolor"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvg:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhe;->zzL(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string/jumbo v1, "bthick"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvh:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvi:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    const-string/jumbo v2, "btype"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvj:I

    packed-switch v1, :pswitch_data_1

    :goto_1
    if-eqz v0, :cond_5

    const-string/jumbo v1, "callbuttoncolor"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvk:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "channel"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvk:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvl:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "dcolor"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvl:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhe;->zzL(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvm:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "font"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvm:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvn:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "hcolor"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvn:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhe;->zzL(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string/jumbo v0, "headersize"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvp:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string/jumbo v0, "q"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzvp:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :pswitch_0
    const-string/jumbo v1, "none"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "dashed"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "dotted"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "solid"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "dark"

    goto :goto_1

    :pswitch_5
    const-string/jumbo v0, "light"

    goto :goto_1

    :pswitch_6
    const-string/jumbo v0, "medium"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzhj;Lcom/google/android/gms/internal/zzhn$zza;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzhj;",
            "Lcom/google/android/gms/internal/zzhn$zza;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const-string/jumbo v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/zzhj;->zzJQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzhj;->zzJR:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhe;->zzy(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzhj;->zzJS:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhe;->zzy(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzhj;->zzJT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzhj;->zzJT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzhj;->zzJU:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzhj;->zzJV:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "simulator"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzhj;->zzJW:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "is_sidewinder"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzhj;->zzJX:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhe;->zzy(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzhj;->zzJY:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhe;->zzy(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzhj;->zzJZ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzhj;->zzKa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzhj;->zzKa:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string/jumbo v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/zzhj;->zzKb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/zzhj;->zzKc:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    const-string/jumbo v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/zzhj;->zzKc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string/jumbo v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/zzhj;->zzKd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/zzhj;->zzKe:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/zzhj;->zzKf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/zzhj;->zzKg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "build"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzhj;->zzKl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "is_charging"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzhj;->zzKi:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "battery_level"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzhj;->zzKh:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v2, "battery"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "active_network_state"

    iget v3, p1, Lcom/google/android/gms/internal/zzhj;->zzKk:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "active_network_metered"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzhj;->zzKj:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "predicted_latency_micros"

    iget v4, p2, Lcom/google/android/gms/internal/zzhn$zza;->zzKq:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "predicted_down_throughput_bps"

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzhn$zza;->zzKr:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "predicted_up_throughput_bps"

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzhn$zza;->zzKs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "predictions"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    const-string/jumbo v2, "network"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v1, "device"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pan"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static zzc(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzyB:I

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "any"

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "portrait"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "landscape"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static zzc(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ad_base_url"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHW:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ad_size"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHW:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v0, "native"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzuk:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzuk:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "ad_json"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHY:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "debug_dialog"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHY:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHS:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    const-string/jumbo v0, "interstitial_timeout"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHS:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_3
    iget v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzis;->zzhw()I

    move-result v2

    if-ne v0, v2, :cond_11

    const-string/jumbo v0, "orientation"

    const-string/jumbo v2, "portrait"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBQ:Ljava/util/List;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "click_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBQ:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhe;->zzi(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBR:Ljava/util/List;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBR:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhe;->zzi(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHV:Ljava/util/List;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "manual_impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHV:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhe;->zzi(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIb:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "active_view"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIb:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    const-string/jumbo v0, "ad_is_javascript"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHZ:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIa:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "ad_passback_url"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIa:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string/jumbo v0, "mediation"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHT:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "custom_render_allowed"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIc:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzId:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "prefetch"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIe:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "oauth2_token_status"

    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIf:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBU:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_a

    const-string/jumbo v0, "refresh_interval_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBU:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_a
    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHU:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_b

    const-string/jumbo v0, "mediation_config_cache_time_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHU:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "gws_query_id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIi:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    const-string/jumbo v2, "fluid"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzul:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "height"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "native_express"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzum:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIk:Ljava/util/List;

    if-eqz v0, :cond_d

    const-string/jumbo v0, "video_start_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIk:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhe;->zzi(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIl:Ljava/util/List;

    if-eqz v0, :cond_e

    const-string/jumbo v0, "video_complete_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIl:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhe;->zzi(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIj:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    if-eqz v0, :cond_f

    const-string/jumbo v0, "rewards"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIj:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zzgR()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    const-string/jumbo v0, "use_displayed_impression"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIm:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v1

    :cond_10
    const-string/jumbo v0, "ad_html"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_11
    iget v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzis;->zzhv()I

    move-result v2

    if-ne v0, v2, :cond_4

    const-string/jumbo v0, "orientation"

    const-string/jumbo v2, "landscape"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method static zzi(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static zzy(Z)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
