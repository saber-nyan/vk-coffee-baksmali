.class Lcom/google/android/gms/ads/internal/zzk$zza;
.super Lcom/google/android/gms/internal/zzim;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private final zzqg:Ljava/lang/String;

.field final synthetic zzqh:Lcom/google/android/gms/ads/internal/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk$zza;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzim;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk$zza;->zzqg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public zzbr()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk$zza;->zzqh:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzk;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk$zza;->zzqg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzir;->zzg(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
