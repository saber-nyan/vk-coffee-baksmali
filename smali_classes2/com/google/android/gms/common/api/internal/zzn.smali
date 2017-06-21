.class abstract Lcom/google/android/gms/common/api/internal/zzn;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zzn;)Lcom/google/android/gms/common/api/internal/zzn;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/api/internal/zzn;",
            ">(",
            "Landroid/content/Context;",
            "TT;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzoK()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/common/zzc;)Lcom/google/android/gms/common/api/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/common/zzc;)Lcom/google/android/gms/common/api/internal/zzn;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/api/internal/zzn;",
            ">(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/google/android/gms/common/zzc;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p0, p1, Lcom/google/android/gms/common/api/internal/zzn;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {p2, p0, v0}, Lcom/google/android/gms/common/zzc;->zzi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzn;->zzpJ()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzn;->unregister()V

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzn;->zzpJ()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzn;->unregister()V

    :cond_1
    return-void
.end method

.method public declared-synchronized unregister()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzn;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzn;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract zzpJ()V
.end method
