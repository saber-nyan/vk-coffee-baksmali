.class Lcom/google/android/gms/measurement/internal/zzac$zza$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzac$zza;->onConnectionSuspended(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzac$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$4;->zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$4;->zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$4;->zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/measurement/AppMeasurementService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzac;Landroid/content/ComponentName;)V

    return-void
.end method
