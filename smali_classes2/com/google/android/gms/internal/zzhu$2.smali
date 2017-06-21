.class Lcom/google/android/gms/internal/zzhu$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhu;->zzbr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzKG:Lcom/google/android/gms/internal/zzey;

.field final synthetic zzKH:Lcom/google/android/gms/internal/zzhu;

.field final synthetic zzKI:Lcom/google/android/gms/internal/zzhx;

.field final synthetic zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhu;Lcom/google/android/gms/internal/zzey;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzhx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhu$2;->zzKH:Lcom/google/android/gms/internal/zzhu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhu$2;->zzKG:Lcom/google/android/gms/internal/zzey;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhu$2;->zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzhu$2;->zzKI:Lcom/google/android/gms/internal/zzhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu$2;->zzKG:Lcom/google/android/gms/internal/zzey;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu$2;->zzKH:Lcom/google/android/gms/internal/zzhu;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhu;->zza(Lcom/google/android/gms/internal/zzhu;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu$2;->zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhu$2;->zzKH:Lcom/google/android/gms/internal/zzhu;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzhu;->zzb(Lcom/google/android/gms/internal/zzhu;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzhu$2;->zzKI:Lcom/google/android/gms/internal/zzhx;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzhu$2;->zzKH:Lcom/google/android/gms/internal/zzhu;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzhu;->zzc(Lcom/google/android/gms/internal/zzhu;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzey;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/reward/mediation/client/zza;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fail to initialize adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu$2;->zzKH:Lcom/google/android/gms/internal/zzhu;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhu;->zzd(Lcom/google/android/gms/internal/zzhu;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu$2;->zzKH:Lcom/google/android/gms/internal/zzhu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu$2;->zzKH:Lcom/google/android/gms/internal/zzhu;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhu;->zzd(Lcom/google/android/gms/internal/zzhu;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhu;->zza(Ljava/lang/String;I)V

    goto :goto_0
.end method
