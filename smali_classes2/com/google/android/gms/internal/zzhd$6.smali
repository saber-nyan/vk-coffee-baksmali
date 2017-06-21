.class Lcom/google/android/gms/internal/zzhd$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeg$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbm;Lcom/google/android/gms/internal/zzhc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzeg$zzb",
        "<",
        "Lcom/google/android/gms/internal/zzed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzJe:Lcom/google/android/gms/internal/zzhd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhd$6;->zzJe:Lcom/google/android/gms/internal/zzhd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzed;)V
    .locals 2

    const-string/jumbo v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/zzde;->zzzf:Lcom/google/android/gms/internal/zzdf;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzed;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    return-void
.end method

.method public synthetic zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzed;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzhd$6;->zza(Lcom/google/android/gms/internal/zzed;)V

    return-void
.end method
