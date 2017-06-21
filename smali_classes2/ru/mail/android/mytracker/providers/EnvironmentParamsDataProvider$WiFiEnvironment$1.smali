.class Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment$1;
.super Ljava/lang/Object;
.source "EnvironmentParamsDataProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;


# direct methods
.method constructor <init>(Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment$1;->this$0:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "scanResult2"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 174
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p2, Landroid/net/wifi/ScanResult;->level:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    .line 175
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p2, Landroid/net/wifi/ScanResult;->level:I

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 170
    check-cast p1, Landroid/net/wifi/ScanResult;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/net/wifi/ScanResult;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment$1;->compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I

    move-result v0

    return v0
.end method
