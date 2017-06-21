.class Lcom/google/android/gms/internal/zzeu$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeu;->zza(Lcom/google/android/gms/internal/zzjg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzCB:Lcom/google/android/gms/internal/zzeu;

.field final synthetic zzCC:Lcom/google/android/gms/internal/zzjg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeu;Lcom/google/android/gms/internal/zzjg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeu$2;->zzCB:Lcom/google/android/gms/internal/zzeu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeu$2;->zzCC:Lcom/google/android/gms/internal/zzjg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeu$2;->zzCB:Lcom/google/android/gms/internal/zzeu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeu;->zze(Lcom/google/android/gms/internal/zzeu;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeu$2;->zzCC:Lcom/google/android/gms/internal/zzjg;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeu$2;->zzCB:Lcom/google/android/gms/internal/zzeu;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeu;->zze(Lcom/google/android/gms/internal/zzeu;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzer;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method
