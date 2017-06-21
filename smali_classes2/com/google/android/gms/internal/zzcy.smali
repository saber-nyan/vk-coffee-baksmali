.class public Lcom/google/android/gms/internal/zzcy;
.super Lcom/google/android/gms/internal/zzct$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzyU:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzct$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcy;->zzyU:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzcp;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzyU:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    new-instance v1, Lcom/google/android/gms/internal/zzcq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcq;-><init>(Lcom/google/android/gms/internal/zzcp;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V

    return-void
.end method
