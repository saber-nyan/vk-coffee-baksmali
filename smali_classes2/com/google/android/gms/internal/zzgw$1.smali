.class Lcom/google/android/gms/internal/zzgw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgw;->zzb(Lcom/google/android/gms/internal/zzed;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGM:Lcom/google/android/gms/internal/zzed;

.field final synthetic zzGN:Lcom/google/android/gms/internal/zzgw$zzb;

.field final synthetic zzGO:Lcom/google/android/gms/internal/zzjd;

.field final synthetic zzGP:Lcom/google/android/gms/internal/zzgw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgw;Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzgw$zzb;Lcom/google/android/gms/internal/zzjd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw$1;->zzGP:Lcom/google/android/gms/internal/zzgw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgw$1;->zzGM:Lcom/google/android/gms/internal/zzed;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgw$1;->zzGN:Lcom/google/android/gms/internal/zzgw$zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgw$1;->zzGO:Lcom/google/android/gms/internal/zzjd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzjp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$1;->zzGM:Lcom/google/android/gms/internal/zzed;

    const-string/jumbo v1, "/nativeAdPreProcess"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgw$1;->zzGN:Lcom/google/android/gms/internal/zzgw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzgw$zzb;->zzHb:Lcom/google/android/gms/internal/zzdf;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzed;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    :try_start_0
    const-string/jumbo v0, "success"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$1;->zzGO:Lcom/google/android/gms/internal/zzjd;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "ads"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzjd;->zzg(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Malformed native JSON response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$1;->zzGP:Lcom/google/android/gms/internal/zzgw;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzgw;->zzF(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$1;->zzGP:Lcom/google/android/gms/internal/zzgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgw;->zzgn()Z

    move-result v0

    const-string/jumbo v1, "Unable to set the ad state error!"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$1;->zzGO:Lcom/google/android/gms/internal/zzjd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjd;->zzg(Ljava/lang/Object;)V

    goto :goto_0
.end method
