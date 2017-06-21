.class public Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;
.super Ljava/lang/Object;
.source "EnvironmentParamsDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiObject"
.end annotation


# instance fields
.field public bssid:Ljava/lang/String;

.field public level:I

.field public linkSpeed:I

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public wifiId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
