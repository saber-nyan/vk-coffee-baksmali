.class Lcom/google/android/gms/common/api/internal/zzh$zzc;
.super Lcom/google/android/gms/common/api/internal/zzh$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzahC:Lcom/google/android/gms/common/api/internal/zzh;

.field private final zzahH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzh;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzh$zzc;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zzh$zzf;-><init>(Lcom/google/android/gms/common/api/internal/zzh;Lcom/google/android/gms/common/api/internal/zzh$1;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzh$zzc;->zzahH:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public zzpt()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzh$zzc;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzh;->zzd(Lcom/google/android/gms/common/api/internal/zzh;)Lcom/google/android/gms/common/api/internal/zzl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzl;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzh$zzc;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzh;->zzg(Lcom/google/android/gms/common/api/internal/zzh;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zzj;->zzahU:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzh$zzc;->zzahH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzh$zzc;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzh;->zzh(Lcom/google/android/gms/common/api/internal/zzh;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzh$zzc;->zzahC:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzh;->zzd(Lcom/google/android/gms/common/api/internal/zzh;)Lcom/google/android/gms/common/api/internal/zzl;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzl;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzj;->zzahU:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/common/api/Api$zzb;->zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method
