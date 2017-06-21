.class Lcom/google/android/gms/common/api/internal/zzw$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/zzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

.field private final zzaiJ:I

.field private final zzaiK:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzw;ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiJ:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiK:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zzb(Lcom/google/android/gms/common/api/internal/zzw;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiJ:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;I)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiK:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiK:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzw;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiK:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zzw;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zzpP()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zzpQ()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiK:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzc;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiJ:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiK:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zzw;->zzb(ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiK:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiJ:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiK:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zzw;->zzc(ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiI:Lcom/google/android/gms/common/api/internal/zzw;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiJ:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzw$zzb;->zzaiK:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;ILcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_0
.end method
