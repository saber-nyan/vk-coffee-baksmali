.class final Lcom/vkcoffee/android/orm/ClassLoader;
.super Ljava/lang/Object;
.source "ClassLoader.java"


# static fields
.field private static final sCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/vkcoffee/android/orm/ClassMetaData;",
            ">;"
        }
    .end annotation
.end field

.field static sClassesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/orm/ClassLoader;->sCache:Ljava/util/Map;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/orm/ClassLoader;->sClassesLoaded:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static earch()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Class;",
            "Lcom/vkcoffee/android/orm/ClassMetaData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/vkcoffee/android/orm/ClassLoader;->sCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static get(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/vkcoffee/android/orm/ClassMetaData",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v3, Lcom/vkcoffee/android/orm/ClassLoader;->sCache:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/orm/ClassMetaData;

    .line 40
    .local v1, "result":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    if-nez v1, :cond_0

    .line 42
    :try_start_0
    sget-object v3, Lcom/vkcoffee/android/orm/ClassLoader;->sCache:Ljava/util/Map;

    invoke-static {p0}, Lcom/vkcoffee/android/orm/ClassLoader;->load(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v1

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/vkcoffee/android/orm/IllegalClassException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 48
    .end local v1    # "result":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    .local v2, "result":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :goto_0
    return-object v2

    .line 44
    .end local v2    # "result":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    .restart local v1    # "result":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lcom/vkcoffee/android/orm/IllegalClassException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .end local v0    # "e":Lcom/vkcoffee/android/orm/IllegalClassException;
    :cond_0
    move-object v2, v1

    .line 48
    .end local v1    # "result":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    .restart local v2    # "result":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    goto :goto_0
.end method

.method private static load(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/vkcoffee/android/orm/ClassMetaData",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/orm/IllegalClassException;
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/vkcoffee/android/orm/ClassMetaData;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/orm/ClassMetaData;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method static loadClasses(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    sget-boolean v0, Lcom/vkcoffee/android/orm/ClassLoader;->sClassesLoaded:Z

    if-nez v0, :cond_0

    .line 119
    invoke-static {p0}, Lcom/vkcoffee/android/orm/ORM$Config;->getInstance(Landroid/content/Context;)Lcom/vkcoffee/android/orm/ORM$Config;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/orm/ORM$Config;->mSubpackage:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/orm/ClassLoader;->loadClasses(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkcoffee/android/orm/ClassLoader;->sClassesLoaded:Z

    .line 122
    :cond_0
    return-void
.end method

.method static loadClasses(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subpackageName"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 72
    .local v10, "start":J
    const/4 v3, 0x0

    .line 74
    .local v3, "count":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v9, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 75
    .local v9, "path":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "packageName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 78
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Detected specific package name for classes : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vkcoffee/android/orm/ORM;->logI(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v12, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 80
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_0
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Searching for the classes in: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vkcoffee/android/orm/ORM;->logI(Ljava/lang/String;)V

    .line 86
    new-instance v4, Ldalvik/system/DexFile;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, "dexfile":Ldalvik/system/DexFile;
    invoke-virtual {v4}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .local v6, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 89
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 91
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-eqz v12, :cond_1

    .line 93
    const/4 v12, 0x1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-static {v7, v12, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 94
    .local v2, "clazz":Ljava/lang/Class;
    if-eqz v2, :cond_1

    .line 95
    sget-object v12, Lcom/vkcoffee/android/orm/ClassLoader;->sCache:Ljava/util/Map;

    invoke-static {v2}, Lcom/vkcoffee/android/orm/ClassLoader;->load(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;

    move-result-object v13

    invoke-interface {v12, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/vkcoffee/android/orm/IllegalClassException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "dexfile":Ldalvik/system/DexFile;
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v7    # "name":Ljava/lang/String;
    :cond_2
    move-object/from16 p1, v8

    goto :goto_0

    .line 105
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 106
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v12, "VK-ORM"

    invoke-static {v12, v5}, Lcom/vkcoffee/android/orm/ORM;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v12, "Found %s classes in %s ms"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vkcoffee/android/orm/ORM;->logI(Ljava/lang/String;)V

    .line 109
    return-void

    .line 105
    :catch_1
    move-exception v5

    goto :goto_2

    .line 98
    .restart local v4    # "dexfile":Ldalvik/system/DexFile;
    .restart local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "path":Ljava/lang/String;
    :catch_2
    move-exception v12

    goto :goto_1

    :catch_3
    move-exception v12

    goto :goto_1
.end method

.method static varargs loadClasses([Ljava/lang/Class;)V
    .locals 4
    .param p0, "classes"    # [Ljava/lang/Class;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    .line 57
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 59
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-static {v0}, Lcom/vkcoffee/android/orm/ClassLoader;->load(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/ClassMetaData;
    :try_end_0
    .catch Lcom/vkcoffee/android/orm/IllegalClassException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Lcom/vkcoffee/android/orm/IllegalClassException;
    invoke-static {v1}, Lcom/vkcoffee/android/orm/ORM;->logE(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 65
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "e":Lcom/vkcoffee/android/orm/IllegalClassException;
    :cond_0
    return-void
.end method

.method static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/vkcoffee/android/orm/ClassMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/vkcoffee/android/orm/ClassLoader;->sCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
