.class final Lcom/google/android/gms/internal/zzhd$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzjq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;)Lcom/google/android/gms/internal/zzjq$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzJa:Ljava/lang/String;

.field final synthetic zzJb:Lcom/google/android/gms/internal/zzbz;

.field final synthetic zzpt:Lcom/google/android/gms/internal/zzcb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhd$5;->zzpt:Lcom/google/android/gms/internal/zzcb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhd$5;->zzJb:Lcom/google/android/gms/internal/zzbz;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhd$5;->zzJa:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhd$5;->zzpt:Lcom/google/android/gms/internal/zzcb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$5;->zzJb:Lcom/google/android/gms/internal/zzbz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcb;->zza(Lcom/google/android/gms/internal/zzbz;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhd$5;->zzpt:Lcom/google/android/gms/internal/zzcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcb;->zzdC()V

    const-string/jumbo v0, "AFMA_buildAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$5;->zzJa:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjp;->zze(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
