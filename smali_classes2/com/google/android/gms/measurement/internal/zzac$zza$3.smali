.class Lcom/google/android/gms/measurement/internal/zzac$zza$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzac$zza;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

.field final synthetic zzaYZ:Lcom/google/android/gms/measurement/internal/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzac$zza;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$3;->zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$3;->zzaYZ:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$3;->zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$3;->zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzac$zza;->zza(Lcom/google/android/gms/measurement/internal/zzac$zza;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$3;->zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$3;->zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCJ()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v2, "Connected to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$3;->zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$3;->zzaYZ:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
