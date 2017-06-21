.class Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;
.super Ljava/lang/Object;
.source "EnvironmentParamsDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CellEnvironment"
.end annotation


# instance fields
.field public cellLocation:Landroid/telephony/gsm/GsmCellLocation;

.field public networkOperator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 199
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 200
    .local v0, "cellLoc":Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_0

    .line 202
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .end local v0    # "cellLoc":Landroid/telephony/CellLocation;
    iput-object v0, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;->cellLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 204
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;->networkOperator:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "No permissions for access to coarse state"

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
