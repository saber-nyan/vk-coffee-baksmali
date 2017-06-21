.class Lcom/google/android/gms/internal/zzhd$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzji$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhd$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzji$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzeh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzJb:Lcom/google/android/gms/internal/zzbz;

.field final synthetic zzJc:Lcom/google/android/gms/internal/zzhd$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhd$2;Lcom/google/android/gms/internal/zzbz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhd$2$1;->zzJc:Lcom/google/android/gms/internal/zzhd$2;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhd$2$1;->zzJb:Lcom/google/android/gms/internal/zzbz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(Lcom/google/android/gms/internal/zzeh;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhd$2$1;->zzJc:Lcom/google/android/gms/internal/zzhd$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhd$2;->zzpt:Lcom/google/android/gms/internal/zzcb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$2$1;->zzJb:Lcom/google/android/gms/internal/zzbz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcb;->zza(Lcom/google/android/gms/internal/zzbz;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhd$2$1;->zzJc:Lcom/google/android/gms/internal/zzhd$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhd$2;->zzpt:Lcom/google/android/gms/internal/zzcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcb;->zzdC()V

    const-string/jumbo v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$2$1;->zzJc:Lcom/google/android/gms/internal/zzhd$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhd$2;->zzIY:Lcom/google/android/gms/internal/zzhf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhf;->zzJk:Lcom/google/android/gms/internal/zzdf;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    const-string/jumbo v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$2$1;->zzJc:Lcom/google/android/gms/internal/zzhd$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhd$2;->zzIY:Lcom/google/android/gms/internal/zzhf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhf;->zzJl:Lcom/google/android/gms/internal/zzdf;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    :try_start_0
    const-string/jumbo v0, "AFMA_buildAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$2$1;->zzJc:Lcom/google/android/gms/internal/zzhd$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhd$2;->zzJa:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzeh;->zze(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzeh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzhd$2$1;->zzd(Lcom/google/android/gms/internal/zzeh;)V

    return-void
.end method
