.class public Lcom/vk/attachpicker/util/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/io/File;)I
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 13
    const/4 v1, 0x0

    .line 15
    .local v1, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_1
    const-string/jumbo v5, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 18
    .local v3, "orientation":I
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object v1, v2

    .line 30
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    return v4

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v3    # "orientation":I
    :pswitch_1
    move-object v1, v2

    .line 20
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    goto :goto_0

    .line 22
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :pswitch_2
    const/16 v4, 0xb4

    move-object v1, v2

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    goto :goto_0

    .line 24
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :pswitch_3
    const/16 v4, 0x5a

    move-object v1, v2

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    goto :goto_0

    .line 26
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :pswitch_4
    const/16 v4, 0x10e

    move-object v1, v2

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    goto :goto_0

    .line 29
    .end local v3    # "orientation":I
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 29
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    goto :goto_1

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getOrientation([B)I
    .locals 15
    .param p0, "jpeg"    # [B

    .prologue
    const/16 v14, 0x8

    const/4 v3, 0x1

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v9, 0x0

    .line 35
    if-nez p0, :cond_0

    .line 128
    :goto_0
    :pswitch_0
    return v9

    .line 39
    :cond_0
    const/4 v5, 0x0

    .line 40
    .local v5, "offset":I
    const/4 v2, 0x0

    .line 43
    .local v2, "length":I
    :cond_1
    :goto_1
    add-int/lit8 v10, v5, 0x3

    array-length v11, p0

    if-ge v10, v11, :cond_3

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    aget-byte v10, p0, v5

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xff

    if-ne v10, v11, :cond_e

    .line 44
    aget-byte v10, p0, v6

    and-int/lit16 v4, v10, 0xff

    .line 47
    .local v4, "marker":I
    const/16 v10, 0xff

    if-ne v4, v10, :cond_2

    move v5, v6

    .line 48
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_1

    .line 50
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .line 53
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    const/16 v10, 0xd8

    if-eq v4, v10, :cond_1

    if-eq v4, v3, :cond_1

    .line 57
    const/16 v10, 0xd9

    if-eq v4, v10, :cond_3

    const/16 v10, 0xda

    if-ne v4, v10, :cond_4

    .line 83
    .end local v4    # "marker":I
    :cond_3
    :goto_2
    if-le v2, v14, :cond_d

    .line 85
    invoke-static {p0, v5, v13, v9}, Lcom/vk/attachpicker/util/Exif;->pack([BIIZ)I

    move-result v8

    .line 86
    .local v8, "tag":I
    const v10, 0x49492a00    # 823968.0f

    if-eq v8, v10, :cond_8

    const v10, 0x4d4d002a    # 2.14958752E8f

    if-eq v8, v10, :cond_8

    .line 87
    const-string/jumbo v10, "CameraExif"

    const-string/jumbo v11, "Invalid byte order"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    .end local v8    # "tag":I
    .restart local v4    # "marker":I
    :cond_4
    invoke-static {p0, v5, v12, v9}, Lcom/vk/attachpicker/util/Exif;->pack([BIIZ)I

    move-result v2

    .line 63
    if-lt v2, v12, :cond_5

    add-int v10, v5, v2

    array-length v11, p0

    if-le v10, v11, :cond_6

    .line 64
    :cond_5
    const-string/jumbo v10, "CameraExif"

    const-string/jumbo v11, "Invalid length"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_6
    const/16 v10, 0xe1

    if-ne v4, v10, :cond_7

    if-lt v2, v14, :cond_7

    add-int/lit8 v10, v5, 0x2

    .line 70
    invoke-static {p0, v10, v13, v9}, Lcom/vk/attachpicker/util/Exif;->pack([BIIZ)I

    move-result v10

    const v11, 0x45786966

    if-ne v10, v11, :cond_7

    add-int/lit8 v10, v5, 0x6

    .line 71
    invoke-static {p0, v10, v12, v9}, Lcom/vk/attachpicker/util/Exif;->pack([BIIZ)I

    move-result v10

    if-nez v10, :cond_7

    .line 72
    add-int/lit8 v5, v5, 0x8

    .line 73
    add-int/lit8 v2, v2, -0x8

    .line 74
    goto :goto_2

    .line 78
    :cond_7
    add-int/2addr v5, v2

    .line 79
    const/4 v2, 0x0

    .line 80
    goto :goto_1

    .line 90
    .end local v4    # "marker":I
    .restart local v8    # "tag":I
    :cond_8
    const v10, 0x49492a00    # 823968.0f

    if-ne v8, v10, :cond_a

    .line 93
    .local v3, "littleEndian":Z
    :goto_3
    add-int/lit8 v10, v5, 0x4

    invoke-static {p0, v10, v13, v3}, Lcom/vk/attachpicker/util/Exif;->pack([BIIZ)I

    move-result v10

    add-int/lit8 v0, v10, 0x2

    .line 94
    .local v0, "count":I
    const/16 v10, 0xa

    if-lt v0, v10, :cond_9

    if-le v0, v2, :cond_b

    .line 95
    :cond_9
    const-string/jumbo v10, "CameraExif"

    const-string/jumbo v11, "Invalid offset"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "count":I
    .end local v3    # "littleEndian":Z
    :cond_a
    move v3, v9

    .line 90
    goto :goto_3

    .line 98
    .restart local v0    # "count":I
    .restart local v3    # "littleEndian":Z
    :cond_b
    add-int/2addr v5, v0

    .line 99
    sub-int/2addr v2, v0

    .line 102
    add-int/lit8 v10, v5, -0x2

    invoke-static {p0, v10, v12, v3}, Lcom/vk/attachpicker/util/Exif;->pack([BIIZ)I

    move-result v0

    move v1, v0

    .line 103
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_4
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    if-lez v1, :cond_d

    const/16 v10, 0xc

    if-lt v2, v10, :cond_d

    .line 105
    invoke-static {p0, v5, v12, v3}, Lcom/vk/attachpicker/util/Exif;->pack([BIIZ)I

    move-result v8

    .line 106
    const/16 v10, 0x112

    if-ne v8, v10, :cond_c

    .line 108
    add-int/lit8 v10, v5, 0x8

    invoke-static {p0, v10, v12, v3}, Lcom/vk/attachpicker/util/Exif;->pack([BIIZ)I

    move-result v7

    .line 109
    .local v7, "orientation":I
    packed-switch v7, :pswitch_data_0

    .line 119
    :pswitch_1
    const-string/jumbo v10, "CameraExif"

    const-string/jumbo v11, "Unsupported orientation"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :pswitch_2
    const/16 v9, 0xb4

    goto/16 :goto_0

    .line 115
    :pswitch_3
    const/16 v9, 0x5a

    goto/16 :goto_0

    .line 117
    :pswitch_4
    const/16 v9, 0x10e

    goto/16 :goto_0

    .line 122
    .end local v7    # "orientation":I
    :cond_c
    add-int/lit8 v5, v5, 0xc

    .line 123
    add-int/lit8 v2, v2, -0xc

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_4

    .line 127
    .end local v1    # "count":I
    .end local v3    # "littleEndian":Z
    .end local v8    # "tag":I
    :cond_d
    const-string/jumbo v10, "CameraExif"

    const-string/jumbo v11, "Orientation not found"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static pack([BIIZ)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "littleEndian"    # Z

    .prologue
    .line 133
    const/4 v1, 0x1

    .line 134
    .local v1, "step":I
    if-eqz p3, :cond_0

    .line 135
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 136
    const/4 v1, -0x1

    .line 139
    :cond_0
    const/4 v2, 0x0

    .local v2, "value":I
    move v0, p2

    .line 140
    .end local p2    # "length":I
    .local v0, "length":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "length":I
    .restart local p2    # "length":I
    if-lez v0, :cond_1

    .line 141
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 142
    add-int/2addr p1, v1

    move v0, p2

    .end local p2    # "length":I
    .restart local v0    # "length":I
    goto :goto_0

    .line 144
    .end local v0    # "length":I
    .restart local p2    # "length":I
    :cond_1
    return v2
.end method
