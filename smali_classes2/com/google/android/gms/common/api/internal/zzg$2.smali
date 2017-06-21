.class Lcom/google/android/gms/common/api/internal/zzg$2;
.super Lcom/google/android/gms/common/api/internal/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/internal/zzg;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzahl:Lcom/google/android/gms/common/api/internal/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzg;Lcom/google/android/gms/common/api/internal/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzg$2;->zzahl:Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzl$zza;-><init>(Lcom/google/android/gms/common/api/internal/zzk;)V

    return-void
.end method


# virtual methods
.method public zzpt()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzg$2;->zzahl:Lcom/google/android/gms/common/api/internal/zzg;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzg;->zza(Lcom/google/android/gms/common/api/internal/zzg;)Lcom/google/android/gms/common/api/internal/zzl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzl;->zzais:Lcom/google/android/gms/common/api/internal/zzp$zza;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zzp$zza;->zzi(Landroid/os/Bundle;)V

    return-void
.end method
