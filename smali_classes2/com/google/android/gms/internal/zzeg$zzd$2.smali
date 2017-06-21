.class Lcom/google/android/gms/internal/zzeg$zzd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzji$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeg$zzd;->release()V
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
.field final synthetic zzBq:Lcom/google/android/gms/internal/zzeg$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeg$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$zzd$2;->zzBq:Lcom/google/android/gms/internal/zzeg$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(Lcom/google/android/gms/internal/zzeh;)V
    .locals 1

    const-string/jumbo v0, "Releasing engine reference."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$zzd$2;->zzBq:Lcom/google/android/gms/internal/zzeg$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeg$zzd;->zza(Lcom/google/android/gms/internal/zzeg$zzd;)Lcom/google/android/gms/internal/zzeg$zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zze;->zzet()V

    return-void
.end method

.method public synthetic zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzeh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeg$zzd$2;->zzd(Lcom/google/android/gms/internal/zzeh;)V

    return-void
.end method
