.class Lcom/google/android/gms/internal/zzba$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzji$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzba;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzeg;)V
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
.field final synthetic zzsI:Lcom/google/android/gms/internal/zzba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzba$3;->zzsI:Lcom/google/android/gms/internal/zzba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(Lcom/google/android/gms/internal/zzeh;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzba$3;->zzsI:Lcom/google/android/gms/internal/zzba;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzba;->zza(Lcom/google/android/gms/internal/zzba;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzba$3;->zzsI:Lcom/google/android/gms/internal/zzba;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzba;->zzb(Lcom/google/android/gms/internal/zzeh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzba$3;->zzsI:Lcom/google/android/gms/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzba;->zzcd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzba$3;->zzsI:Lcom/google/android/gms/internal/zzba;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzba;->zzh(Z)V

    return-void
.end method

.method public synthetic zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzeh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzba$3;->zzd(Lcom/google/android/gms/internal/zzeh;)V

    return-void
.end method
