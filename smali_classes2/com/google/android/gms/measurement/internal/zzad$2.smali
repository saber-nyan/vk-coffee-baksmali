.class Lcom/google/android/gms/measurement/internal/zzad$2;
.super Lcom/google/android/gms/measurement/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaZe:Lcom/google/android/gms/measurement/internal/zzad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzad$2;->zzaZe:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzw;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad$2;->zzaZe:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Lcom/google/android/gms/measurement/internal/zzad;)V

    return-void
.end method
