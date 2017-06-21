.class public final Lorg/acra/collector/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/collector/Compatibility$VERSION_CODES;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getAPILevel()I
    .locals 5

    .prologue
    .line 49
    :try_start_0
    const-class v3, Landroid/os/Build$VERSION;

    const-string/jumbo v4, "SDK_INT"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 50
    .local v0, "SDK_INT":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 61
    .local v1, "apiLevel":I
    :goto_0
    return v1

    .line 51
    .end local v1    # "apiLevel":I
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 59
    .restart local v1    # "apiLevel":I
    goto :goto_0

    .line 53
    .end local v1    # "apiLevel":I
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 59
    .restart local v1    # "apiLevel":I
    goto :goto_0

    .line 55
    .end local v1    # "apiLevel":I
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 59
    .restart local v1    # "apiLevel":I
    goto :goto_0

    .line 57
    .end local v1    # "apiLevel":I
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "apiLevel":I
    goto :goto_0
.end method

.method public static getDropBoxServiceName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    const-class v2, Landroid/content/Context;

    const-string/jumbo v3, "DROPBOX_SERVICE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 73
    .local v0, "serviceName":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    :cond_0
    return-object v1
.end method
