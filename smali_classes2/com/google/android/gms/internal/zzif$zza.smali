.class public final Lcom/google/android/gms/internal/zzif$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzKT:Lorg/json/JSONObject;

.field public final zzKV:Lcom/google/android/gms/internal/zzeo;

.field public final zzKY:J

.field public final zzKZ:J

.field public final zzLd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field public final zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field public final zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzeo;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzif$zza;->zzLd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzif$zza;->zzKV:Lcom/google/android/gms/internal/zzeo;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzif$zza;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput p5, p0, Lcom/google/android/gms/internal/zzif$zza;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzif$zza;->zzKY:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzif$zza;->zzKZ:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzif$zza;->zzKT:Lorg/json/JSONObject;

    return-void
.end method
