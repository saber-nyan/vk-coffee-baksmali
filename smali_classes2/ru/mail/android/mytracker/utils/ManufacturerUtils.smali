.class public Lru/mail/android/mytracker/utils/ManufacturerUtils;
.super Ljava/lang/Object;
.source "ManufacturerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isManufacturerAskPermission()Z
    .locals 2

    .prologue
    .line 7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 8
    .local v0, "manufacturer":Ljava/lang/String;
    const-string/jumbo v1, "Xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Meizu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
