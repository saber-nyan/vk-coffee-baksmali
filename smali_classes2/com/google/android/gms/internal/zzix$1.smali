.class Lcom/google/android/gms/internal/zzix$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzix;->zzhD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzMI:Lcom/google/android/gms/internal/zzix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzix;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzix$1;->zzMI:Lcom/google/android/gms/internal/zzix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$1;->zzMI:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzix;->zza(Lcom/google/android/gms/internal/zzix;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "Suspending the looper thread"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$1;->zzMI:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzix;->zzb(Lcom/google/android/gms/internal/zzix;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$1;->zzMI:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzix;->zza(Lcom/google/android/gms/internal/zzix;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const-string/jumbo v0, "Looper thread resumed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v0, "Looper thread interrupted."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
