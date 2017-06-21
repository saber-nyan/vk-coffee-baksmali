.class Lcom/google/android/gms/internal/zzeg$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeg$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzBf:Lcom/google/android/gms/internal/zzed;

.field final synthetic zzBg:Lcom/google/android/gms/internal/zzeg$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeg$1;Lcom/google/android/gms/internal/zzed;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBf:Lcom/google/android/gms/internal/zzed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .locals 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeg;->zzc(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg$1;->zzBd:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zze;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg$1;->zzBd:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zze;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzeg;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeg;->zzd(Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/internal/zzeg$zzb;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBf:Lcom/google/android/gms/internal/zzed;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzeg$zzb;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg$1;->zzBd:Lcom/google/android/gms/internal/zzeg$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBf:Lcom/google/android/gms/internal/zzed;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzeg$zze;->zzh(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg$1$2;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzeg$1;->zzBd:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzeg$zze;)Lcom/google/android/gms/internal/zzeg$zze;

    const-string/jumbo v0, "Successfully loaded JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
