.class Lcom/google/android/gms/internal/zzeg$zze$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzji$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeg$zze;->zzev()V
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
        "Lcom/google/android/gms/internal/zzed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzBu:Lcom/google/android/gms/internal/zzeg$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeg$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$zze$3;->zzBu:Lcom/google/android/gms/internal/zzeg$zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzed;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeg$zze$3$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzeg$zze$3$1;-><init>(Lcom/google/android/gms/internal/zzeg$zze$3;Lcom/google/android/gms/internal/zzed;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzir;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzed;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeg$zze$3;->zza(Lcom/google/android/gms/internal/zzed;)V

    return-void
.end method
