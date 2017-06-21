.class Lcom/google/android/gms/common/api/internal/zzh$zzb$1;
.super Lcom/google/android/gms/common/api/internal/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzpt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzahF:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zzahG:Lcom/google/android/gms/common/api/internal/zzh$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzh$zzb;Lcom/google/android/gms/common/api/internal/zzk;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb$1;->zzahG:Lcom/google/android/gms/common/api/internal/zzh$zzb;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb$1;->zzahF:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzl$zza;-><init>(Lcom/google/android/gms/common/api/internal/zzk;)V

    return-void
.end method


# virtual methods
.method public zzpt()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb$1;->zzahG:Lcom/google/android/gms/common/api/internal/zzh$zzb;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb$1;->zzahF:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzh;->zza(Lcom/google/android/gms/common/api/internal/zzh;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
