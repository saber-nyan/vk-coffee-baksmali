.class Lcom/google/android/gms/common/api/internal/zzj$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/internal/zzj;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/zzv;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic zzaid:Lcom/google/android/gms/common/api/internal/zzj;

.field final synthetic zzaif:Lcom/google/android/gms/common/api/internal/zzv;

.field final synthetic zzaig:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzj;Lcom/google/android/gms/common/api/internal/zzv;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzj$5;->zzaid:Lcom/google/android/gms/common/api/internal/zzj;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzj$5;->zzaif:Lcom/google/android/gms/common/api/internal/zzv;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/zzj$5;->zzaig:Z

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zzj$5;->zzabL:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zzj$5;->zzp(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzp(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj$5;->zzaid:Lcom/google/android/gms/common/api/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzj;->zzd(Lcom/google/android/gms/common/api/internal/zzj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzaf(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zznr()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj$5;->zzaid:Lcom/google/android/gms/common/api/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzj;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj$5;->zzaid:Lcom/google/android/gms/common/api/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzj;->reconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj$5;->zzaif:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/Result;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzj$5;->zzaig:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzj$5;->zzabL:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    return-void
.end method
