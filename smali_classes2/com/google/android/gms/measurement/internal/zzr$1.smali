.class Lcom/google/android/gms/measurement/internal/zzr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzr;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaWW:Z

.field final synthetic zzaWX:Lcom/google/android/gms/measurement/internal/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzr;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzr$1;->zzaWX:Lcom/google/android/gms/measurement/internal/zzr;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzr$1;->zzaWW:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzr$1;->zzaWX:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzr$1;->zzaWW:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzw;->zzJ(Z)V

    return-void
.end method
