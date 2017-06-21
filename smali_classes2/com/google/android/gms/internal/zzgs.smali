.class public Lcom/google/android/gms/internal/zzgs;
.super Lcom/google/android/gms/internal/zzgn;

# interfaces
.implements Lcom/google/android/gms/internal/zzjq$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzgr$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzgn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzgr$zza;)V

    return-void
.end method


# virtual methods
.method protected zzgb()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzjq;->zza(Lcom/google/android/gms/internal/zzjq$zza;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgs;->zzgi()V

    const-string/jumbo v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgs;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzir;->zzaC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgs;->zzGe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjp;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected zzgi()V
    .locals 0

    return-void
.end method
