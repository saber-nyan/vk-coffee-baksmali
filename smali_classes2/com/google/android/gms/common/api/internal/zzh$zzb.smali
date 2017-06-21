.class Lcom/google/android/gms/common/api/internal/zzh$zzb;
.super Lcom/google/android/gms/common/api/internal/zzh$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzahC:Lcom/google/android/gms/common/api/internal/zzh;

.field private final zzahE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzh;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zzh$zzf;-><init>(Lcom/google/android/gms/common/api/internal/zzh;Lcom/google/android/gms/common/api/internal/zzh$1;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzahE:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zzpt()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzh;->zzb(Lcom/google/android/gms/common/api/internal/zzh;)Lcom/google/android/gms/common/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzh;->zza(Lcom/google/android/gms/common/api/internal/zzh;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzh;->zzd(Lcom/google/android/gms/common/api/internal/zzh;)Lcom/google/android/gms/common/api/internal/zzl;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzh$zzb$1;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/gms/common/api/internal/zzh$zzb$1;-><init>(Lcom/google/android/gms/common/api/internal/zzh$zzb;Lcom/google/android/gms/common/api/internal/zzk;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/zzl;->zza(Lcom/google/android/gms/common/api/internal/zzl$zza;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzh;->zze(Lcom/google/android/gms/common/api/internal/zzh;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzh;->zzf(Lcom/google/android/gms/common/api/internal/zzh;)Lcom/google/android/gms/internal/zzrn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrn;->connect()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzahE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzh$zzb;->zzahE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$zzb;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V

    goto :goto_0
.end method
