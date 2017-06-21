.class Lcom/google/android/gms/internal/zzeg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeg;->zzep()Lcom/google/android/gms/internal/zzeg$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzBd:Lcom/google/android/gms/internal/zzeg$zze;

.field final synthetic zzBe:Lcom/google/android/gms/internal/zzeg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzeg$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg$1;->zzBd:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzeg;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeg;->zzb(Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzeg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzed;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzeg$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzeg$1$1;-><init>(Lcom/google/android/gms/internal/zzeg$1;Lcom/google/android/gms/internal/zzed;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzed;->zza(Lcom/google/android/gms/internal/zzed$zza;)V

    const-string/jumbo v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/internal/zzeg$1$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzeg$1$2;-><init>(Lcom/google/android/gms/internal/zzeg$1;Lcom/google/android/gms/internal/zzed;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzed;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    new-instance v1, Lcom/google/android/gms/internal/zzja;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzja;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzeg$1$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/zzeg$1$3;-><init>(Lcom/google/android/gms/internal/zzeg$1;Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzja;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzja;->set(Ljava/lang/Object;)V

    const-string/jumbo v1, "/requestReload"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzed;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeg;->zzf(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeg;->zzf(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzed;->zzZ(Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzeg$1$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzeg$1$4;-><init>(Lcom/google/android/gms/internal/zzeg$1;Lcom/google/android/gms/internal/zzed;)V

    sget v0, Lcom/google/android/gms/internal/zzeg$zza;->zzBm:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeg;->zzf(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeg;->zzf(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzed;->zzab(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$1;->zzBe:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeg;->zzf(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzed;->zzaa(Ljava/lang/String;)V

    goto :goto_0
.end method
