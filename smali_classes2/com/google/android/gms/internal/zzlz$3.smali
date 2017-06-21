.class final Lcom/google/android/gms/internal/zzlz$3;
.super Lcom/google/android/gms/internal/zzlz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlz;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzlz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlz",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlz;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzct(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlz$3;->zzcw(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected zzcw(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzlz;->zzpY()Lcom/google/android/gms/internal/zzlz$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlz$3;->zzvs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz$3;->zzvt:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzlz$zza;->zzb(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
