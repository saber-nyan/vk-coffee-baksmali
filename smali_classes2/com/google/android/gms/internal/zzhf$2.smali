.class Lcom/google/android/gms/internal/zzhf$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJm:Lcom/google/android/gms/internal/zzhf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .locals 6
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhf;->zza(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhf;->zzb(Lcom/google/android/gms/internal/zzhf;)Lcom/google/android/gms/internal/zzjd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjd;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzhi;

    const/4 v0, -0x2

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/zzhi;-><init>(ILjava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhf;->zzc(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhi;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhi;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ==== "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhf;->zzc(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhi;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v0, "URL missing in loadAdUrl GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "%40mediation_adapters%40"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzjp;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v0, "check_adapters"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzhf;->zzd(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/zzil;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "%40mediation_adapters%40"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzhi;->setUrl(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ad request URL modified to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhf;->zzb(Lcom/google/android/gms/internal/zzhf;)Lcom/google/android/gms/internal/zzjd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzjd;->zzg(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
