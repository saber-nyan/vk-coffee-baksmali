.class Lcom/google/android/gms/measurement/internal/zzx$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaYx:Lcom/google/android/gms/measurement/internal/AppMetadata;

.field final synthetic zzaYy:Lcom/google/android/gms/measurement/internal/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzx;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx$7;->zzaYy:Lcom/google/android/gms/measurement/internal/zzx;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzx$7;->zzaYx:Lcom/google/android/gms/measurement/internal/AppMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx$7;->zzaYy:Lcom/google/android/gms/measurement/internal/zzx;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx$7;->zzaYx:Lcom/google/android/gms/measurement/internal/AppMetadata;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzx;->zzfl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx$7;->zzaYy:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzx;)Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx$7;->zzaYx:Lcom/google/android/gms/measurement/internal/AppMetadata;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzw;->zzd(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    return-void
.end method
