.class public Lcom/vk/attachpicker/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final BASE_DIR:Ljava/lang/String; = "VK"

.field private static final PHOTOS_DIR:Ljava/lang/String; = "Photos"

.field public static final TEMP_GRAF_PREFIX:Ljava/lang/String; = "GRAF_"

.field public static final TEMP_TRIM_PREFIX:Ljava/lang/String; = "TEMP_TRIM_"

.field private static final VIDEOS_DIR:Ljava/lang/String; = "Videos"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFolder(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 87
    :cond_0
    return-object p0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getBaseTeleCameraDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 24
    .local v0, "basePath":Ljava/io/File;
    invoke-static {v0}, Lcom/vk/attachpicker/util/FileUtils;->checkFolder(Ljava/io/File;)Ljava/io/File;

    .line 25
    const-string/jumbo v1, "VK"

    invoke-static {v0, v1}, Lcom/vk/attachpicker/util/FileUtils;->getDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static getDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "baseFolder"    # Ljava/io/File;
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lcom/vk/attachpicker/util/FileUtils;->checkFolder(Ljava/io/File;)Ljava/io/File;

    .line 19
    return-object v0
.end method

.method public static getPhotoFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/vk/attachpicker/util/FileUtils;->getPhotosDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getPhotosDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/vk/attachpicker/util/FileUtils;->getBaseTeleCameraDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "Photos"

    invoke-static {v0, v1}, Lcom/vk/attachpicker/util/FileUtils;->getDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getTempFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 45
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, ".vkontakte"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v1, "outputFolder":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TEMP_TRIM_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v0, "output":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 50
    :cond_0
    return-object v0
.end method

.method public static getTempGraffitiFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 63
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, ".vkontakte"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v1, "outputFolder":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GRAF_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v0, "output":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 68
    :cond_0
    return-object v0
.end method

.method public static getTempVideoFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 54
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, ".vkontakte"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v1, "outputFolder":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TEMP_TRIM_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v0, "output":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 59
    :cond_0
    return-object v0
.end method

.method public static getVideoFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/vk/attachpicker/util/FileUtils;->getVideosDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getVideosDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/vk/attachpicker/util/FileUtils;->getBaseTeleCameraDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "Videos"

    invoke-static {v0, v1}, Lcom/vk/attachpicker/util/FileUtils;->getDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static saveToFile(Ljava/io/File;[B)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    if-eqz v2, :cond_0

    .line 100
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 95
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 99
    :goto_2
    if-eqz v1, :cond_1

    .line 100
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 104
    :cond_1
    :goto_3
    throw v3

    .line 102
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 98
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 95
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
