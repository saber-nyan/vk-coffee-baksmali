.class Lcom/google/android/gms/measurement/internal/zzab$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzab;->setMeasurementEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaYG:Z

.field final synthetic zzaYH:Lcom/google/android/gms/measurement/internal/zzab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzab;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzab$1;->zzaYH:Lcom/google/android/gms/measurement/internal/zzab;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzab$1;->zzaYG:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzab$1;->zzaYH:Lcom/google/android/gms/measurement/internal/zzab;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzab$1;->zzaYG:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzab;Z)V

    return-void
.end method
