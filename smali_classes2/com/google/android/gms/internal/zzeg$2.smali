.class Lcom/google/android/gms/internal/zzeg$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzji$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeg;->zzeq()Lcom/google/android/gms/internal/zzeg$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzji$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzBe:Lcom/google/android/gms/internal/zzeg;

.field final synthetic zzBl:Lcom/google/android/gms/internal/zzeg$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzeg$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$2;->zzBe:Lcom/google/android/gms/internal/zzeg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg$2;->zzBl:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzed;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$2;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeg;->zzc(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$2;->zzBe:Lcom/google/android/gms/internal/zzeg;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzeg;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$2;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeg;->zzg(Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/internal/zzeg$zze;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$2;->zzBl:Lcom/google/android/gms/internal/zzeg$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg$2;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeg;->zzg(Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/internal/zzeg$zze;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const-string/jumbo v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$2;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeg;->zzg(Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/internal/zzeg$zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zze;->zzeu()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$2;->zzBe:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg$2;->zzBl:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzeg$zze;)Lcom/google/android/gms/internal/zzeg$zze;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzed;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeg$2;->zza(Lcom/google/android/gms/internal/zzed;)V

    return-void
.end method
