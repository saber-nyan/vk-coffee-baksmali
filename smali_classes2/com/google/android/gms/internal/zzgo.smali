.class public Lcom/google/android/gms/internal/zzgo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgo$zza;
    }
.end annotation


# instance fields
.field private final zzGj:Landroid/os/Handler;

.field private final zzGk:J

.field private zzGl:J

.field private zzGm:Lcom/google/android/gms/internal/zzjq$zza;

.field protected zzGn:Z

.field protected zzGo:Z

.field private final zzoG:I

.field private final zzoH:I

.field protected final zzpD:Lcom/google/android/gms/internal/zzjp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjq$zza;Lcom/google/android/gms/internal/zzjp;II)V
    .locals 10

    const-wide/16 v6, 0xc8

    const-wide/16 v8, 0x32

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzgo;-><init>(Lcom/google/android/gms/internal/zzjq$zza;Lcom/google/android/gms/internal/zzjp;IIJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzjq$zza;Lcom/google/android/gms/internal/zzjp;IIJJ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzgo;->zzGk:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzgo;->zzGl:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGj:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgo;->zzGm:Lcom/google/android/gms/internal/zzjq$zza;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzgo;->zzGn:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzgo;->zzGo:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzgo;->zzoH:I

    iput p3, p0, Lcom/google/android/gms/internal/zzgo;->zzoG:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgo;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzgo;->zzoG:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzgo;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzgo;->zzoH:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzgo;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGl:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGl:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzgo;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGl:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzjq$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGm:Lcom/google/android/gms/internal/zzjq$zza;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzgo;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGk:J

    return-wide v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzgo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGj:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgo;->zzgg()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGm:Lcom/google/android/gms/internal/zzjq$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzjq$zza;->zza(Lcom/google/android/gms/internal/zzjp;Z)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzgo$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzjp;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzgo$zza;-><init>(Lcom/google/android/gms/internal/zzgo;Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgo$zza;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzjy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIa:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzjy;-><init>(Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzjp;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzjy;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzjy;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzjp;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v5

    :goto_0
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjp;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzir;->zzaC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public zzge()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGj:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzgo;->zzGk:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized zzgf()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzgg()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzgh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGo:Z

    return v0
.end method
