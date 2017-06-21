.class public Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "CoffeeDebugInfFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->startDebug()V

    return-void
.end method

.method private currentDPI(F)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # F

    .prologue
    .line 186
    move v0, p1

    .line 189
    .local v0, "density":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ldpi ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    .line 191
    :cond_0
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mdpi ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 193
    :cond_1
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_2

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hdpi ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 195
    :cond_2
    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_3

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xhpdi ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 197
    :cond_3
    float-to-double v2, v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_4

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xxhdpi ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 199
    :cond_4
    float-to-double v2, v0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_5

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xxxhdpi ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 202
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WTF? ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private deviceInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Manufacter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Brand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    const-string v2, "Android: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; SDK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Incr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->incr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    const-string v2, ".\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Current network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "inf":Ljava/lang/String;
    return-object v0
.end method

.method private filePerm()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 132
    new-instance v2, Ljava/io/File;

    const-string v9, "EXTERNAL_STORAGE"

    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, "PRM":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "API":Ljava/io/File;
    :try_start_0
    const-string v9, "SECONDARY_STORAGE"

    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "checkSCE":Ljava/lang/String;
    const-string v9, "SECONDARY_STORAGE"

    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "SCEdir":Ljava/lang/String;
    const-string v6, "SCE: "

    .line 141
    .local v6, "debugLabel":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v9, "SECONDARY_STORAGE"

    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v5    # "checkSCE":Ljava/lang/String;
    .local v3, "SCE":Ljava/io/File;
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {v12}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, "NOW":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "API: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nPM: W "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  E "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 151
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "SCE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nPM: W "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  E "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 152
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "PRS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/vkcoffee/android/DirSelect;->getParsedEXT()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 153
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "NOW: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v12}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nPM: W "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  E "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 154
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "CUR CH:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "customDirCh"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 150
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "inf":Ljava/lang/String;
    return-object v8

    .line 143
    .end local v1    # "NOW":Ljava/io/File;
    .end local v3    # "SCE":Ljava/io/File;
    .end local v4    # "SCEdir":Ljava/lang/String;
    .end local v6    # "debugLabel":Ljava/lang/String;
    .end local v8    # "inf":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 144
    .local v7, "e":Ljava/lang/Exception;
    const-string v9, "EXTERNAL_STORAGE"

    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .restart local v4    # "SCEdir":Ljava/lang/String;
    const-string v6, "SNULLEXT: "

    .line 146
    .restart local v6    # "debugLabel":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v9, "EXTERNAL_STORAGE"

    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3    # "SCE":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private getDeviceDensity()I
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 246
    .local v0, "density":I
    return v0
.end method

.method private getSize(I)Ljava/lang/String;
    .locals 2
    .param p1, "screen"    # I

    .prologue
    .line 231
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LARGE ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 233
    :cond_0
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NORMAL ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_1
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMALL ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_2
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XLARGE ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private incr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isFlymeOrMIUI()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 214
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/framework/flyme-framework.jar"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.miui.core"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eq v3, v2, :cond_0

    .line 225
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 219
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 222
    .local v0, "x":Ljava/lang/Exception;
    goto :goto_0

    .end local v0    # "x":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 225
    goto :goto_0
.end method

.method private isMIUI8()Z
    .locals 12

    .prologue
    .line 251
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.miui.core"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 252
    const/4 v7, 0x0

    .line 287
    :goto_0
    return v7

    .line 254
    :cond_0
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 255
    .local v2, "incr":Ljava/lang/String;
    const-string v7, "."

    const-string v8, ":"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "inf":Ljava/lang/String;
    const/4 v0, 0x0

    .line 257
    .local v0, "count":I
    const/4 v5, 0x0

    .line 258
    .local v5, "secondValue":I
    const/4 v1, 0x0

    .line 259
    .local v1, "global":I
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v9, :cond_1

    .line 262
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v9, :cond_2

    .line 285
    const/4 v7, 0x0

    goto :goto_0

    .line 259
    :cond_1
    aget-object v4, v8, v7

    .line 260
    .local v4, "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 259
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 262
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    aget-object v4, v8, v7

    .line 263
    .restart local v4    # "s":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 264
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x6

    if-ge v10, v11, :cond_3

    const/4 v10, 0x1

    if-ne v0, v10, :cond_3

    .line 266
    const/4 v7, 0x0

    goto :goto_0

    .line 268
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x8

    if-lt v10, v11, :cond_4

    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    .line 269
    const/4 v7, 0x1

    goto :goto_0

    .line 271
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x7

    if-lt v10, v11, :cond_5

    const/4 v10, 0x2

    if-ne v0, v10, :cond_5

    .line 272
    const/4 v7, 0x1

    goto :goto_0

    .line 274
    :cond_5
    const/4 v10, 0x2

    if-ne v0, v10, :cond_6

    .line 275
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 277
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_7

    const/4 v10, 0x3

    if-ne v0, v10, :cond_7

    const/4 v10, 0x6

    if-ne v5, v10, :cond_7

    .line 278
    const/4 v7, 0x1

    goto :goto_0

    .line 281
    :cond_7
    const/4 v10, 0x4

    if-ne v1, v10, :cond_8

    .line 282
    const/4 v7, 0x0

    goto :goto_0

    .line 262
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 286
    .end local v0    # "count":I
    .end local v1    # "global":I
    .end local v2    # "incr":Ljava/lang/String;
    .end local v3    # "inf":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "secondValue":I
    :catch_0
    move-exception v6

    .line 287
    .local v6, "x":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private startDebug()V
    .locals 5

    .prologue
    .line 160
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 161
    .local v0, "contxt":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkcoffee/android/DebugPrefsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v1, "var2":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u0412\u0441\u0451 \u043d\u0430 \u0432\u0430\u0448 \u0441\u0442\u0440\u0430\u0445 \u0438 \u0440\u0438\u0441\u043a!"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 165
    return-void
.end method

.method private uiInfo()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 174
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 175
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 176
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-le v8, v9, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 177
    .local v2, "densityDpi":I
    :goto_0
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v9, "RealDeviceUI"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 179
    .local v6, "sp":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<b>RC:</b> DDpi: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "densityDpi"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; SHDp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "screenHeightDp"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; SWDp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "screenWidthDp"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; SL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "screenLayout"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getSize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "realConf":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<br><b>CC:</b> DDpi: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; SHDp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; SWDp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; SL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-direct {p0, v8}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getSize(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "currConf":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<br><b>Base:</b> RR: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "density"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-direct {p0, v8}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->currentDPI(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; CR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v8}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->currentDPI(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; DPI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getDeviceDensity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; SAKit: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0805c5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "inf":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<br><b>Firmware:</b> Flyme/MIUI: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->isFlymeOrMIUI()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; MIUI 8 or higher: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->isMIUI8()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "firmware":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1    # "currConf":Ljava/lang/String;
    .end local v2    # "densityDpi":I
    .end local v3    # "firmware":Ljava/lang/String;
    .end local v4    # "inf":Ljava/lang/String;
    .end local v5    # "realConf":Ljava/lang/String;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v7

    .line 176
    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->addPreferencesFromResource(I)V

    .line 52
    const-string v0, "device"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->deviceInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    const-string v0, "ui"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->uiInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    const-string v0, "changePathPerm"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->filePerm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    const-string v0, "debugStart"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    const-string v0, "clearPlatfrom"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    const-string v0, "debugMode"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    const-string v1, "dkJ9mP1TgIeOQJIg4e/zpw=="

    invoke-static {v1}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    const-string v1, "VmLoKbvPm0lpW5DiUL7tGw=="

    invoke-static {v1}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 91
    const-string v0, "app"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    const-string v1, "debugMode"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 94
    :cond_0
    const-string v0, "reRegisterCoffeeGCM"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 118
    return-void
.end method
