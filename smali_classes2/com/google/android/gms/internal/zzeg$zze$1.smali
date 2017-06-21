.class Lcom/google/android/gms/internal/zzeg$zze$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzji$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeg$zze;->zzes()Lcom/google/android/gms/internal/zzeg$zzd;
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
.field final synthetic zzBt:Lcom/google/android/gms/internal/zzeg$zzd;

.field final synthetic zzBu:Lcom/google/android/gms/internal/zzeg$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeg$zze;Lcom/google/android/gms/internal/zzeg$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$zze$1;->zzBu:Lcom/google/android/gms/internal/zzeg$zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg$zze$1;->zzBt:Lcom/google/android/gms/internal/zzeg$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzed;)V
    .locals 2

    const-string/jumbo v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$zze$1;->zzBt:Lcom/google/android/gms/internal/zzeg$zzd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzed;->zzen()Lcom/google/android/gms/internal/zzei;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeg$zzd;->zzh(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzed;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeg$zze$1;->zza(Lcom/google/android/gms/internal/zzed;)V

    return-void
.end method
