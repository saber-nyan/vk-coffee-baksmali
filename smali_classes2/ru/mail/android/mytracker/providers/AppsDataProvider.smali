.class public Lru/mail/android/mytracker/providers/AppsDataProvider;
.super Lru/mail/android/mytracker/providers/AbstractFPDataProvider;
.source "AppsDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;
    }
.end annotation


# instance fields
.field private apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hash:Ljava/lang/String;

.field private isChanged:Z

.field private isEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lru/mail/android/mytracker/providers/AbstractFPDataProvider;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->isEnabled:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->isChanged:Z

    .line 62
    return-void
.end method

.method private getInstalledApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 142
    .local v0, "allInstalledPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 143
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    .end local v8    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v6, "installedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 152
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_0

    .line 156
    const-wide/16 v4, 0x0

    .line 157
    .local v4, "firstInstallTime":J
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x8

    if-le v9, v10, :cond_1

    iget-wide v10, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v12, 0x3e8

    div-long v4, v10, v12

    .line 158
    :cond_1
    new-instance v9, Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v4, v5}, Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "firstInstallTime":J
    .end local v6    # "installedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;>;"
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "installedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;>;"
    :cond_2
    return-object v6
.end method


# virtual methods
.method public collectData(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 71
    const-string/jumbo v4, "AppsDataProvider: You must not call collectData method from main thread"

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-boolean v4, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->isEnabled:Z

    if-eqz v4, :cond_0

    .line 80
    :try_start_0
    invoke-static {}, Lru/mail/android/mytracker/utils/PreferencesManager;->getInstance()Lru/mail/android/mytracker/utils/PreferencesManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->init(Landroid/content/Context;)Lru/mail/android/mytracker/utils/PreferencesManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 87
    .local v2, "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->isChanged:Z

    .line 88
    invoke-direct {p0, p1}, Lru/mail/android/mytracker/providers/AppsDataProvider;->getInstalledApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->apps:Ljava/util/ArrayList;

    .line 90
    iget-object v4, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->apps:Ljava/util/ArrayList;

    invoke-static {v4}, Lru/mail/android/mytracker/utils/ListUtils;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    invoke-virtual {v2}, Lru/mail/android/mytracker/utils/PreferencesManager;->getAppsInstalledHash()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "currentAppsHash":Ljava/lang/String;
    invoke-static {v3}, Lru/mail/android/mytracker/utils/EncryptionUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->hash:Ljava/lang/String;

    .line 96
    iget-object v4, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->hash:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    const-string/jumbo v4, "Apps hash did not changed"

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v0    # "currentAppsHash":Ljava/lang/String;
    .end local v2    # "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PreferencesManager error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "currentAppsHash":Ljava/lang/String;
    .restart local v2    # "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->isChanged:Z

    .line 103
    const-string/jumbo v4, "Apps hash changed"

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->isEnabled:Z

    return v0
.end method

.method public putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V
    .locals 1
    .param p1, "destination"    # Lru/mail/android/mytracker/builders/JSONBuilder;

    .prologue
    .line 115
    iget-boolean v0, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->isChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->apps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->addInstalledApps(Ljava/util/List;)V

    .line 116
    :cond_0
    return-void
.end method

.method public putDataToMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "destination":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->isEnabled:Z

    .line 55
    return-void
.end method

.method public storeData(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lru/mail/android/mytracker/providers/AbstractFPDataProvider;->storeData(Landroid/content/Context;)V

    .line 122
    iget-boolean v2, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->isChanged:Z

    if-eqz v2, :cond_0

    .line 127
    :try_start_0
    invoke-static {}, Lru/mail/android/mytracker/utils/PreferencesManager;->getInstance()Lru/mail/android/mytracker/utils/PreferencesManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->init(Landroid/content/Context;)Lru/mail/android/mytracker/utils/PreferencesManager;

    move-result-object v1

    .line 128
    .local v1, "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    iget-object v2, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->hash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lru/mail/android/mytracker/utils/PreferencesManager;->setAppsInstalledHash(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lru/mail/android/mytracker/providers/AppsDataProvider;->isChanged:Z

    .line 135
    :cond_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PreferencesManager error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
