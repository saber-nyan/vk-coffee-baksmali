.class Lcom/google/android/gms/common/api/internal/zzg$1;
.super Lcom/google/android/gms/common/api/internal/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/internal/zzg;->zzb(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;
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

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzg$1;->zzahl:Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzl$zza;-><init>(Lcom/google/android/gms/common/api/internal/zzk;)V

    return-void
.end method


# virtual methods
.method public zzpt()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzg$1;->zzahl:Lcom/google/android/gms/common/api/internal/zzg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzg;->onConnectionSuspended(I)V

    return-void
.end method
