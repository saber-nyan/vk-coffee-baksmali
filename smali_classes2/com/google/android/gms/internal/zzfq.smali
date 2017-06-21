.class public Lcom/google/android/gms/internal/zzfq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfq$1;,
        Lcom/google/android/gms/internal/zzfq$zza;
    }
.end annotation


# instance fields
.field private final zzDu:Z

.field private final zzDv:Z

.field private final zzDw:Z

.field private final zzDx:Z

.field private final zzDy:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzfq$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfq$zza;->zza(Lcom/google/android/gms/internal/zzfq$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzDu:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfq$zza;->zzb(Lcom/google/android/gms/internal/zzfq$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzDv:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfq$zza;->zzc(Lcom/google/android/gms/internal/zzfq$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzDw:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfq$zza;->zzd(Lcom/google/android/gms/internal/zzfq$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzDx:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfq$zza;->zze(Lcom/google/android/gms/internal/zzfq$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzDy:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfq$zza;Lcom/google/android/gms/internal/zzfq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfq;-><init>(Lcom/google/android/gms/internal/zzfq$zza;)V

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfq;->zzDu:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfq;->zzDv:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfq;->zzDw:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfq;->zzDx:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfq;->zzDy:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
