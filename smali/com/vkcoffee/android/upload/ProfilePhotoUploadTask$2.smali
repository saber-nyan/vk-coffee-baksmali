.class Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;
.super Ljava/lang/Object;
.source "ProfilePhotoUploadTask.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->getServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 104
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting upload server "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 17
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->server:Ljava/lang/String;

    .line 72
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    invoke-static {v14}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->access$1(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1

    .line 73
    const/4 v9, 0x0

    .line 75
    .local v9, "reverseThePolarity":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    iget-object v14, v14, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->file:Ljava/lang/String;

    const-string v15, "content:"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    iget-object v14, v14, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->file:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v14}, Lcom/vkcoffee/android/upload/UploadUtils;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 77
    .local v8, "realName":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 79
    :try_start_1
    new-instance v14, Landroid/media/ExifInterface;

    invoke-direct {v14, v8}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v15, "Orientation"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 80
    .local v6, "orientation":I
    const/16 v14, 0x8

    if-eq v6, v14, :cond_2

    const/4 v14, 0x6

    if-eq v6, v14, :cond_2

    const/4 v9, 0x0

    .line 86
    .end local v6    # "orientation":I
    .end local v8    # "realName":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 87
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    iget-object v14, v14, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    iget-object v15, v15, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->file:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const-string v16, "r"

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 89
    if-eqz v9, :cond_3

    iget v14, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_1
    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    invoke-static {v15}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->access$1(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)F

    move-result v15

    mul-float/2addr v14, v15

    float-to-int v4, v14

    .line 90
    .local v4, "left":I
    if-eqz v9, :cond_4

    iget v14, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_2
    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    invoke-static {v15}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->access$2(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)F

    move-result v15

    mul-float/2addr v14, v15

    float-to-int v12, v14

    .line 91
    .local v12, "top":I
    if-eqz v9, :cond_5

    iget v14, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_3
    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    invoke-static {v15}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->access$3(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)F

    move-result v15

    mul-float/2addr v14, v15

    float-to-int v10, v14

    .line 92
    .local v10, "right":I
    if-eqz v9, :cond_6

    iget v14, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_4
    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    invoke-static {v15}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->access$4(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)F

    move-result v15

    mul-float/2addr v14, v15

    float-to-int v1, v14

    .line 93
    .local v1, "bottom":I
    sub-int v14, v10, v4

    sub-int v15, v1, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 94
    .local v13, "width":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v11, "stringBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    .line 96
    .local v7, "profilePhotoUploadTask":Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;
    iget-object v14, v7, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->server:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&_square_crop="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x2c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x2c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&_full="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x2c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x2c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-int v15, v10, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x2c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-int v15, v1, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->server:Ljava/lang/String;

    .line 101
    .end local v1    # "bottom":I
    .end local v4    # "left":I
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "profilePhotoUploadTask":Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;
    .end local v9    # "reverseThePolarity":Z
    .end local v10    # "right":I
    .end local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "top":I
    .end local v13    # "width":I
    :cond_1
    :goto_5
    return-void

    .line 80
    .restart local v6    # "orientation":I
    .restart local v8    # "realName":Ljava/lang/String;
    .restart local v9    # "reverseThePolarity":Z
    :cond_2
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 81
    .end local v6    # "orientation":I
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "realName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 98
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 89
    .end local v3    # "e2":Ljava/lang/Exception;
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :try_start_3
    iget v14, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto/16 :goto_1

    .line 90
    .restart local v4    # "left":I
    :cond_4
    iget v14, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto/16 :goto_2

    .line 91
    .restart local v12    # "top":I
    :cond_5
    iget v14, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto/16 :goto_3

    .line 92
    .restart local v10    # "right":I
    :cond_6
    iget v14, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4
.end method
