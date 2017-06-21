.class public final Lcom/vkcoffee/android/orm/ORM;
.super Ljava/lang/Object;
.source "ORM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/orm/ORM$Config;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final META_DATABASE_NAME:Ljava/lang/String; = "vk.orm.db_name"

.field static final META_PACKAGE:Ljava/lang/String; = "vk.orm.package"

.field static final META_VERSION:Ljava/lang/String; = "vk.orm.version"

.field static final TAG:Ljava/lang/String; = "VK-ORM"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;

    .prologue
    .line 77
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    .local v2, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 82
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    if-lez v4, :cond_0

    .line 83
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "read":I
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 86
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "read":I
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 87
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static loadClasses(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subpackageName"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/vkcoffee/android/orm/ClassLoader;->loadClasses(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static varargs loadClasses([Ljava/lang/Class;)V
    .locals 0
    .param p0, "classes"    # [Ljava/lang/Class;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/vkcoffee/android/orm/ClassLoader;->loadClasses([Ljava/lang/Class;)V

    .line 33
    return-void
.end method

.method public static loadManifestClasses(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/vkcoffee/android/orm/ClassLoader;->loadClasses(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static logD(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 67
    return-void
.end method

.method static logE(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    return-void
.end method

.method static logE(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vkcoffee/android/orm/ORM;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method static logI(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 73
    return-void
.end method
