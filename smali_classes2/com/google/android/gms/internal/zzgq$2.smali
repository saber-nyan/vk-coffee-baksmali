.class Lcom/google/android/gms/internal/zzgq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgq;->zzbr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGt:Lcom/google/android/gms/internal/zzgq;

.field final synthetic zzpF:Lcom/google/android/gms/internal/zzif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgq;Lcom/google/android/gms/internal/zzif;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgq$2;->zzGt:Lcom/google/android/gms/internal/zzgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgq$2;->zzpF:Lcom/google/android/gms/internal/zzif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgq$2;->zzGt:Lcom/google/android/gms/internal/zzgq;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzgq;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgq$2;->zzGt:Lcom/google/android/gms/internal/zzgq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgq$2;->zzpF:Lcom/google/android/gms/internal/zzif;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzgq;->zzm(Lcom/google/android/gms/internal/zzif;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
