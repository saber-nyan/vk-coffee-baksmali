.class Lcom/google/android/gms/measurement/internal/zzx$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/AppMetadata;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/measurement/internal/zzai;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zzaYx:Lcom/google/android/gms/measurement/internal/AppMetadata;

.field final synthetic zzaYy:Lcom/google/android/gms/measurement/internal/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzx;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx$6;->zzaYy:Lcom/google/android/gms/measurement/internal/zzx;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzx$6;->zzaYx:Lcom/google/android/gms/measurement/internal/AppMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzx$6;->zzDh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzDh()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/zzai;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx$6;->zzaYy:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzx;)Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzCj()Lcom/google/android/gms/measurement/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx$6;->zzaYx:Lcom/google/android/gms/measurement/internal/AppMetadata;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zze;->zzeX(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
