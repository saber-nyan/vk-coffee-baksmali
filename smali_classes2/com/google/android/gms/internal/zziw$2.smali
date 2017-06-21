.class Lcom/google/android/gms/internal/zziw$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziw;->zzb(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/zzjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzMA:Lcom/google/android/gms/internal/zziw$zzc;

.field final synthetic zzMB:Lcom/google/android/gms/internal/zziw;

.field final synthetic zzzP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziw;Ljava/lang/String;Lcom/google/android/gms/internal/zziw$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zziw$2;->zzMB:Lcom/google/android/gms/internal/zziw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziw$2;->zzzP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zziw$2;->zzMA:Lcom/google/android/gms/internal/zziw$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzr;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Failed to load URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zziw$2;->zzzP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziw$2;->zzMA:Lcom/google/android/gms/internal/zziw$zzc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziw$zzc;->zzb(Ljava/lang/Object;)V

    return-void
.end method
