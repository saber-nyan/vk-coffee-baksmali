.class Lcom/google/android/gms/internal/zzgw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgw;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgw$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGP:Lcom/google/android/gms/internal/zzgw;

.field final synthetic zzGQ:Lcom/google/android/gms/internal/zzjd;

.field final synthetic zzGR:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgw;Lcom/google/android/gms/internal/zzjd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw$2;->zzGP:Lcom/google/android/gms/internal/zzgw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgw$2;->zzGQ:Lcom/google/android/gms/internal/zzjd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgw$2;->zzGR:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$2;->zzGQ:Lcom/google/android/gms/internal/zzjd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$2;->zzGP:Lcom/google/android/gms/internal/zzgw;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgw;->zza(Lcom/google/android/gms/internal/zzgw;)Lcom/google/android/gms/ads/internal/zzp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgw$2;->zzGR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjd;->zzg(Ljava/lang/Object;)V

    return-void
.end method
