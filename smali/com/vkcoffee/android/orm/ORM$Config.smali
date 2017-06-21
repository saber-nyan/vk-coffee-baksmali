.class Lcom/vkcoffee/android/orm/ORM$Config;
.super Ljava/lang/Object;
.source "ORM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/orm/ORM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# static fields
.field private static sInstance:Lcom/vkcoffee/android/orm/ORM$Config;


# instance fields
.field final mDbName:Ljava/lang/String;

.field final mDbVersion:I

.field final mSubpackage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 102
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "vk.orm.package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/orm/ORM$Config;->mSubpackage:Ljava/lang/String;

    .line 103
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "vk.orm.db_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/orm/ORM$Config;->mDbName:Ljava/lang/String;

    .line 104
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "vk.orm.version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/orm/ORM$Config;->mDbVersion:I

    .line 105
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/vkcoffee/android/orm/ORM$Config;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    sget-object v1, Lcom/vkcoffee/android/orm/ORM$Config;->sInstance:Lcom/vkcoffee/android/orm/ORM$Config;

    if-nez v1, :cond_0

    .line 110
    :try_start_0
    new-instance v1, Lcom/vkcoffee/android/orm/ORM$Config;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/orm/ORM$Config;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vkcoffee/android/orm/ORM$Config;->sInstance:Lcom/vkcoffee/android/orm/ORM$Config;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/orm/ORM$Config;->sInstance:Lcom/vkcoffee/android/orm/ORM$Config;

    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
