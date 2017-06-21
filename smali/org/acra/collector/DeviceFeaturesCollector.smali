.class final Lorg/acra/collector/DeviceFeaturesCollector;
.super Ljava/lang/Object;
.source "DeviceFeaturesCollector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatures(Landroid/content/Context;)Ljava/lang/String;
    .locals 17
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {}, Lorg/acra/collector/Compatibility;->getAPILevel()I

    move-result v13

    const/4 v14, 0x5

    if-ge v13, v14, :cond_0

    .line 38
    const-string/jumbo v13, "Data available only with API Level >= 5"

    .line 64
    :goto_0
    return-object v13

    .line 41
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v12, "result":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 44
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const-class v14, Landroid/content/pm/PackageManager;

    const-string/jumbo v15, "getSystemAvailableFeatures"

    const/4 v13, 0x0

    check-cast v13, [Ljava/lang/Class;

    invoke-virtual {v14, v15, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 45
    .local v7, "getSystemAvailableFeatures":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 46
    .local v5, "features":[Ljava/lang/Object;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_2

    aget-object v3, v1, v9

    .line 47
    .local v3, "feature":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "name"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48
    .local v4, "featureName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 49
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :goto_2
    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string/jumbo v15, "getGlEsVersion"

    const/4 v13, 0x0

    check-cast v13, [Ljava/lang/Class;

    invoke-virtual {v14, v15, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 52
    .local v6, "getGlEsVersion":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 53
    .local v8, "glEsVersion":Ljava/lang/String;
    const-string/jumbo v13, "glEsVersion = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 58
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "feature":Ljava/lang/Object;
    .end local v4    # "featureName":Ljava/lang/String;
    .end local v5    # "features":[Ljava/lang/Object;
    .end local v6    # "getGlEsVersion":Ljava/lang/reflect/Method;
    .end local v7    # "getSystemAvailableFeatures":Ljava/lang/reflect/Method;
    .end local v8    # "glEsVersion":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v13, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v14, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Couldn\'t retrieve DeviceFeatures for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const-string/jumbo v13, "Could not retrieve data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0
.end method
