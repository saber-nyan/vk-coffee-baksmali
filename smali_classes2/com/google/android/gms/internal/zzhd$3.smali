.class final Lcom/google/android/gms/internal/zzhd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzbm;Lcom/google/android/gms/internal/zzhc;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzIV:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzIY:Lcom/google/android/gms/internal/zzhf;

.field final synthetic zzIZ:Lcom/google/android/gms/internal/zzbz;

.field final synthetic zzJa:Ljava/lang/String;

.field final synthetic zzJd:Lcom/google/android/gms/internal/zzbm;

.field final synthetic zzpt:Lcom/google/android/gms/internal/zzcb;

.field final synthetic zzxh:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzhf;Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;Ljava/lang/String;Lcom/google/android/gms/internal/zzbm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhd$3;->zzxh:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhd$3;->zzIV:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhd$3;->zzIY:Lcom/google/android/gms/internal/zzhf;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzhd$3;->zzpt:Lcom/google/android/gms/internal/zzcb;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzhd$3;->zzIZ:Lcom/google/android/gms/internal/zzbz;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzhd$3;->zzJa:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzhd$3;->zzJd:Lcom/google/android/gms/internal/zzbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbD()Lcom/google/android/gms/internal/zzjr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$3;->zzxh:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzhd$3;->zzIV:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzjr;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzjp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzih;->zzhi()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/zzjp;->clearCache(Z)V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$3;->zzIY:Lcom/google/android/gms/internal/zzhf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzhf;->zzh(Lcom/google/android/gms/internal/zzjp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$3;->zzpt:Lcom/google/android/gms/internal/zzcb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhd$3;->zzIZ:Lcom/google/android/gms/internal/zzbz;

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "rwc"

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/zzcb;->zza(Lcom/google/android/gms/internal/zzbz;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$3;->zzpt:Lcom/google/android/gms/internal/zzcb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcb;->zzdB()Lcom/google/android/gms/internal/zzbz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhd$3;->zzJa:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhd$3;->zzpt:Lcom/google/android/gms/internal/zzcb;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/zzhd;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;)Lcom/google/android/gms/internal/zzjq$zza;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v2

    const-string/jumbo v3, "/invalidRequest"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzhd$3;->zzIY:Lcom/google/android/gms/internal/zzhf;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzhf;->zzJk:Lcom/google/android/gms/internal/zzdf;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzjq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    const-string/jumbo v3, "/loadAdURL"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzhd$3;->zzIY:Lcom/google/android/gms/internal/zzhf;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzhf;->zzJl:Lcom/google/android/gms/internal/zzdf;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzjq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    const-string/jumbo v3, "/log"

    sget-object v4, Lcom/google/android/gms/internal/zzde;->zzzf:Lcom/google/android/gms/internal/zzdf;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzjq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzjq;->zza(Lcom/google/android/gms/internal/zzjq$zza;)V

    const-string/jumbo v1, "Loading the JS library."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$3;->zzJd:Lcom/google/android/gms/internal/zzbm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbm;->zzdp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjp;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
