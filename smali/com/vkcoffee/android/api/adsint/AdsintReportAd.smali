.class public Lcom/vkcoffee/android/api/adsint/AdsintReportAd;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AdsintReportAd.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string/jumbo v0, "adsint.reportAd"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "ad_data"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/adsint/AdsintReportAd;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "reason"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/adsint/AdsintReportAd;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    return-void
.end method
