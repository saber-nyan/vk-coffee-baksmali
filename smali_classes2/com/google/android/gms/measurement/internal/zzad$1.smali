.class Lcom/google/android/gms/measurement/internal/zzad$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzad;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzad$1;->zzaZe:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad$1;->zzaZe:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzad;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzad$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzad$1$1;-><init>(Lcom/google/android/gms/measurement/internal/zzad$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method
