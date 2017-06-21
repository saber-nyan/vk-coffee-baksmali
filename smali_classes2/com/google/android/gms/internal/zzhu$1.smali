.class Lcom/google/android/gms/internal/zzhu$1;
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

.field final synthetic zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhu;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzey;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhu$1;->zzKH:Lcom/google/android/gms/internal/zzhu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhu$1;->zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhu$1;->zzKG:Lcom/google/android/gms/internal/zzey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu$1;->zzKH:Lcom/google/android/gms/internal/zzhu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu$1;->zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu$1;->zzKG:Lcom/google/android/gms/internal/zzey;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzhu;->zza(Lcom/google/android/gms/internal/zzhu;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzey;)V

    return-void
.end method
