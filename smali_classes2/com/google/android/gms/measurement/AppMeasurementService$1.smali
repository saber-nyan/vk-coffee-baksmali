.class Lcom/google/android/gms/measurement/AppMeasurementService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/AppMeasurementService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzOP:I

.field final synthetic zzaTW:Lcom/google/android/gms/measurement/internal/zzw;

.field final synthetic zzaTX:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic zzaTY:Lcom/google/android/gms/measurement/AppMeasurementService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/AppMeasurementService;Lcom/google/android/gms/measurement/internal/zzw;ILcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaTY:Lcom/google/android/gms/measurement/AppMeasurementService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaTW:Lcom/google/android/gms/measurement/internal/zzw;

    iput p3, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzOP:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaTX:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaTW:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzDc()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaTY:Lcom/google/android/gms/measurement/AppMeasurementService;

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zza(Lcom/google/android/gms/measurement/AppMeasurementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;-><init>(Lcom/google/android/gms/measurement/AppMeasurementService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
