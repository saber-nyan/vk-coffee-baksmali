.class Lcom/google/android/gms/internal/zzdr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzzP:Ljava/lang/String;

.field final synthetic zzzQ:Ljava/lang/String;

.field final synthetic zzzR:I

.field final synthetic zzzS:I

.field final synthetic zzzT:Z

.field final synthetic zzzU:Lcom/google/android/gms/internal/zzdr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzU:Lcom/google/android/gms/internal/zzdr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzQ:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzR:I

    iput p5, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzS:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzT:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "event"

    const-string/jumbo v2, "precacheProgress"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzP:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzQ:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "bytesLoaded"

    iget v2, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzR:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "totalBytes"

    iget v2, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "cacheReady"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdr$1;->zzzU:Lcom/google/android/gms/internal/zzdr;

    const-string/jumbo v2, "onPrecacheEvent"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzdr;->zza(Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
