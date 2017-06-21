.class public final Lcom/google/android/gms/internal/zzcg;
.super Lcom/google/android/gms/internal/zzcf$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzuQ:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcf$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcg;->zzuQ:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzce;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzuQ:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/zzcd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcd;-><init>(Lcom/google/android/gms/internal/zzce;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;->onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V

    return-void
.end method
