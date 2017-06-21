.class Lcom/google/android/gms/internal/zzgn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgn;->zzga()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGi:Lcom/google/android/gms/internal/zzgn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgn$1;->zzGi:Lcom/google/android/gms/internal/zzgn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn$1;->zzGi:Lcom/google/android/gms/internal/zzgn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgn;->zza(Lcom/google/android/gms/internal/zzgn;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Timed out waiting for WebView to finish loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn$1;->zzGi:Lcom/google/android/gms/internal/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgn;->cancel()V

    goto :goto_0
.end method
