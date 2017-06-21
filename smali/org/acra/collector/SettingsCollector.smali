.class final Lorg/acra/collector/SettingsCollector;
.super Ljava/lang/Object;
.source "SettingsCollector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectGlobalSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {}, Lorg/acra/collector/Compatibility;->getAPILevel()I

    move-result v10

    const/16 v11, 0x11

    if-ge v10, v11, :cond_0

    .line 116
    const-string/jumbo v10, ""

    .line 146
    :goto_0
    return-object v10

    .line 119
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v8, "result":Ljava/lang/StringBuilder;
    :try_start_0
    const-string/jumbo v10, "android.provider.Settings$Global"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 122
    .local v3, "globalClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 123
    .local v6, "keys":[Ljava/lang/reflect/Field;
    const-string/jumbo v10, "getString"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/ContentResolver;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 124
    .local v2, "getString":Ljava/lang/reflect/Method;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v5, v0, v4

    .line 125
    .local v5, "key":Ljava/lang/reflect/Field;
    const-class v10, Ljava/lang/Deprecated;

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/String;

    if-ne v10, v11, :cond_1

    invoke-static {v5}, Lorg/acra/collector/SettingsCollector;->isAuthorized(Ljava/lang/reflect/Field;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 126
    const/4 v11, 0x0

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    aput-object v13, v12, v10

    const/4 v13, 0x1

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 127
    .local v9, "value":Ljava/lang/Object;
    if-eqz v9, :cond_1

    .line 128
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 124
    .end local v9    # "value":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 132
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "getString":Ljava/lang/reflect/Method;
    .end local v3    # "globalClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "i$":I
    .end local v5    # "key":Ljava/lang/reflect/Field;
    .end local v6    # "keys":[Ljava/lang/reflect/Field;
    .end local v7    # "len$":I
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error : "

    invoke-interface {v10, v11, v12, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 134
    :catch_1
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error : "

    invoke-interface {v10, v11, v12, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 136
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error : "

    invoke-interface {v10, v11, v12, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 138
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error : "

    invoke-interface {v10, v11, v12, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 140
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error : "

    invoke-interface {v10, v11, v12, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 142
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error : "

    invoke-interface {v10, v11, v12, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v6, "result":Ljava/lang/StringBuilder;
    const-class v8, Landroid/provider/Settings$Secure;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 87
    .local v4, "keys":[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 88
    .local v3, "key":Ljava/lang/reflect/Field;
    const-class v8, Ljava/lang/Deprecated;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_0

    invoke-static {v3}, Lorg/acra/collector/SettingsCollector;->isAuthorized(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 92
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v9, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Error : "

    invoke-interface {v8, v9, v10, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 96
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v9, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Error : "

    invoke-interface {v8, v9, v10, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 102
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "key":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v6, "result":Ljava/lang/StringBuilder;
    const-class v8, Landroid/provider/Settings$System;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 54
    .local v4, "keys":[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 58
    .local v3, "key":Ljava/lang/reflect/Field;
    const-class v8, Ljava/lang/Deprecated;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 62
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v9, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Error : "

    invoke-interface {v8, v9, v10, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 66
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v9, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Error : "

    invoke-interface {v8, v9, v10, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 72
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "key":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static isAuthorized(Ljava/lang/reflect/Field;)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v4, 0x0

    .line 150
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "WIFI_AP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v4

    .line 153
    :cond_1
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/acra/ACRAConfiguration;->excludeMatchingSettingsKeys()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 154
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    .end local v3    # "regex":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method
