.class Lcom/google/android/gms/internal/zzeg$1$3;
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

.field final synthetic zzBj:Lcom/google/android/gms/internal/zzja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeg$1;Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzja;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$1$3;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg$1$3;->zzBf:Lcom/google/android/gms/internal/zzed;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeg$1$3;->zzBj:Lcom/google/android/gms/internal/zzja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .locals 4
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$3;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeg;->zzc(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaJ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$3;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeg;->zze(Lcom/google/android/gms/internal/zzeg;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaJ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$3;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzeg;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$3;->zzBg:Lcom/google/android/gms/internal/zzeg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg;->zzeq()Lcom/google/android/gms/internal/zzeg$zze;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg$1$3;->zzBf:Lcom/google/android/gms/internal/zzed;

    const-string/jumbo v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1$3;->zzBj:Lcom/google/android/gms/internal/zzja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdf;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/zzed;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
