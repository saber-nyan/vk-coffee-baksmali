.class Lcom/google/android/gms/internal/zzev$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzev;->zzc(Ljava/util/List;)Lcom/google/android/gms/internal/zzes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzCE:Lcom/google/android/gms/internal/zzes;

.field final synthetic zzCF:Lcom/google/android/gms/internal/zzev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzev;Lcom/google/android/gms/internal/zzes;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzev$1;->zzCF:Lcom/google/android/gms/internal/zzev;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzev$1;->zzCE:Lcom/google/android/gms/internal/zzes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzev$1;->zzCE:Lcom/google/android/gms/internal/zzes;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzes;->zzCq:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzey;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
