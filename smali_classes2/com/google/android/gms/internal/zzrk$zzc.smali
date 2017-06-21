.class Lcom/google/android/gms/internal/zzrk$zzc;
.super Lcom/google/android/gms/common/api/internal/zza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zza$zza",
        "<",
        "Lcom/google/android/gms/search/SearchAuthApi$GoogleNowAuthResult;",
        "Lcom/google/android/gms/internal/zzrj;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbgJ:Ljava/lang/String;

.field private final zzbgK:Z

.field private final zzbgM:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/search/SearchAuth;->zzUI:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/zza$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    const-string/jumbo v0, "SearchAuth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrk$zzc;->zzbgK:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrk$zzc;->zzbgM:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrk$zzc;->zzbgJ:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrk$zzc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrk$zzc;->zzbgK:Z

    return v0
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzrj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrk$zzc;->zza(Lcom/google/android/gms/internal/zzrj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzrj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrk$zzc;->zzbgK:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SearchAuth"

    const-string/jumbo v1, "GetGoogleNowAuthImpl started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzrk$zzc$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzrk$zzc$1;-><init>(Lcom/google/android/gms/internal/zzrk$zzc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrj;->zzqJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzri;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrk$zzc;->zzbgJ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrk$zzc;->zzbgM:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzri;->zza(Lcom/google/android/gms/internal/zzrh;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected zzbk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/search/SearchAuthApi$GoogleNowAuthResult;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrk$zzc;->zzbgK:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SearchAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GetGoogleNowAuthImpl received failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzrk$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzrk$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrk$zzc;->zzbk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/search/SearchAuthApi$GoogleNowAuthResult;

    move-result-object v0

    return-object v0
.end method
