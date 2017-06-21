.class Lcom/google/android/gms/ads/internal/zzc$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzcb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzpr:Lcom/google/android/gms/ads/internal/zzc;

.field final synthetic zzps:Lcom/google/android/gms/internal/zzif$zza;

.field final synthetic zzpt:Lcom/google/android/gms/internal/zzcb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzcb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpt:Lcom/google/android/gms/internal/zzcb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrE:Lcom/google/android/gms/internal/zzcf;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzir;->zzaC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzcc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzcc;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput v5, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrL:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/zzc;->zzph:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrE:Lcom/google/android/gms/internal/zzcf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcf;->zza(Lcom/google/android/gms/internal/zzce;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iput-boolean v5, v0, Lcom/google/android/gms/ads/internal/zzc;->zzph:Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/zze;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/zze;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/ads/internal/zze;)Lcom/google/android/gms/internal/zzjp;

    move-result-object v5

    new-instance v1, Lcom/google/android/gms/ads/internal/zze$zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/ads/internal/zze$zzb;-><init>(Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zze;->zza(Lcom/google/android/gms/ads/internal/zze$zza;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$3$1;-><init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zze;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/zzjp;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$3$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$3$2;-><init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zze;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/zzjp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iput v4, v0, Lcom/google/android/gms/ads/internal/zzs;->zzrL:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/zzc;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbB()Lcom/google/android/gms/internal/zzgr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzc;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzps:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzc;->zzpj:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzs;->zzrk:Lcom/google/android/gms/internal/zzan;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzc;->zzpn:Lcom/google/android/gms/internal/zzex;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpr:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzpt:Lcom/google/android/gms/internal/zzcb;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zzgr;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/internal/zzgr$zza;Lcom/google/android/gms/internal/zzcb;)Lcom/google/android/gms/internal/zzit;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/zzs;->zzro:Lcom/google/android/gms/internal/zzit;

    goto :goto_0
.end method
