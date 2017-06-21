.class Lcom/google/android/gms/measurement/internal/zzac$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaYB:Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

.field final synthetic zzaYU:Lcom/google/android/gms/measurement/internal/zzac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac$5;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzac$5;->zzaYB:Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$5;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Lcom/google/android/gms/measurement/internal/zzac;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$5;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCE()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac$5;->zzaYB:Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzac$5;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzCg()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzac$5;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzp;->zzCL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzn;->zzfe(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/AppMetadata;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$5;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzd(Lcom/google/android/gms/measurement/internal/zzac;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac$5;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzp;->zzCE()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v1

    const-string/jumbo v2, "Failed to send attribute to AppMeasurementService"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
