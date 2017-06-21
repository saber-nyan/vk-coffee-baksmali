.class public Lcom/google/android/gms/measurement/internal/zzq;
.super Lcom/google/android/gms/measurement/internal/zzz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzq$1;,
        Lcom/google/android/gms/measurement/internal/zzq$zzb;,
        Lcom/google/android/gms/measurement/internal/zzq$zzc;,
        Lcom/google/android/gms/measurement/internal/zzq$zza;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzw;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzq;Ljava/net/HttpURLConnection;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzq;->zzc(Ljava/net/HttpURLConnection;)[B

    move-result-object v0

    return-object v0
.end method

.method private zzc(Ljava/net/HttpURLConnection;)[B
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzAo()Lcom/google/android/gms/measurement/internal/zzp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCd()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCd()V

    return-void
.end method

.method public bridge synthetic zzCe()Lcom/google/android/gms/measurement/internal/zzc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCe()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCf()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCf()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCg()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCg()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCh()Lcom/google/android/gms/measurement/internal/zzg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCh()Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCi()Lcom/google/android/gms/measurement/internal/zzac;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCj()Lcom/google/android/gms/measurement/internal/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCj()Lcom/google/android/gms/measurement/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCk()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCk()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCl()Lcom/google/android/gms/measurement/internal/zzu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCl()Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCm()Lcom/google/android/gms/measurement/internal/zzad;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCm()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCn()Lcom/google/android/gms/measurement/internal/zzv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCo()Lcom/google/android/gms/measurement/internal/zzt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCp()Lcom/google/android/gms/measurement/internal/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCp()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/lang/String;Ljava/net/URL;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzq$zza;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzq$zza;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzjv()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzq$zzc;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzq$zzc;-><init>(Lcom/google/android/gms/measurement/internal/zzq;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzq$zza;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/zzv;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzq$zza;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzq$zza;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzjv()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzq$zzc;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzq$zzc;-><init>(Lcom/google/android/gms/measurement/internal/zzq;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzq$zza;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/zzv;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to obtain HTTP connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzCp()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzd;->zzBO()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzCp()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzd;->zzBP()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object v0
.end method

.method protected zziJ()V
    .locals 0

    return-void
.end method

.method public bridge synthetic zzjj()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjj()V

    return-void
.end method

.method public bridge synthetic zzjk()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjk()V

    return-void
.end method

.method public bridge synthetic zzjl()Lcom/google/android/gms/internal/zzmq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    return-object v0
.end method

.method public zzlB()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzjv()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method
