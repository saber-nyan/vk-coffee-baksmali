.class Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;
.super Ljava/lang/Object;
.source "SignupProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SignupProfileFragment;->updatePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 192
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$100(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 195
    .local v3, "uri":Landroid/net/Uri;
    const/16 v23, 0x0

    .line 197
    .local v23, "rotation":I
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "file"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "content"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 198
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "r"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 199
    .local v17, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "content"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    const/4 v2, 0x1

    :try_start_1
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "orientation"

    aput-object v6, v4, v2

    .line 202
    .local v4, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 203
    .local v15, "c":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 206
    :cond_1
    const-string/jumbo v2, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "img rotation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 210
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v15    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    :try_start_2
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 211
    .local v20, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 212
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v6, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 214
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "file"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v23, :cond_4

    .line 215
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$200(Lcom/vkcoffee/android/fragments/SignupProfileFragment;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v21

    .line 216
    .local v21, "realPath":Ljava/lang/String;
    if-eqz v21, :cond_4

    .line 218
    :try_start_3
    new-instance v16, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 219
    .local v16, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v2, "Orientation"

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v19

    .line 220
    .local v19, "o":I
    const-string/jumbo v2, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exif orientation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 221
    packed-switch v19, :pswitch_data_0

    .line 249
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v19    # "o":I
    .end local v21    # "realPath":Ljava/lang/String;
    :cond_4
    :goto_1
    :pswitch_0
    sparse-switch v23, :sswitch_data_0

    .line 272
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$600(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v18

    .line 273
    .local v18, "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$300(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v24

    .line 274
    .local v24, "top":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$400(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v22

    .line 275
    .local v22, "right":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v13

    .line 279
    .local v13, "bottom":F
    :goto_2
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v18

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 v18, v0

    .line 280
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v24

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 v24, v0

    .line 281
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v22

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 v22, v0

    .line 282
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v13

    float-to-int v2, v2

    int-to-float v13, v2

    .line 284
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v25

    .line 285
    .local v25, "ts":I
    sub-float v2, v22, v18

    sub-float v6, v13, v24

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v14, v2

    .line 286
    .local v14, "bs":I
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 287
    move/from16 v0, v25

    if-le v14, v0, :cond_5

    .line 288
    int-to-float v2, v14

    move/from16 v0, v25

    int-to-float v6, v0

    div-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 291
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    new-instance v6, Landroid/graphics/Rect;

    move/from16 v0, v18

    float-to-int v7, v0

    move/from16 v0, v24

    float-to-int v8, v0

    move/from16 v0, v22

    float-to-int v9, v0

    float-to-int v11, v13

    invoke-direct {v6, v7, v8, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v6, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 292
    .local v5, "_bmp":Landroid/graphics/Bitmap;
    if-eqz v23, :cond_6

    .line 293
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 294
    .local v10, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v23

    int-to-float v2, v0

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 295
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 297
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_6
    move-object v12, v5

    .line 298
    .local v12, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 302
    .end local v5    # "_bmp":Landroid/graphics/Bitmap;
    .end local v13    # "bottom":F
    .end local v14    # "bs":I
    .end local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "left":F
    .end local v20    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "right":F
    .end local v24    # "top":F
    .end local v25    # "ts":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    if-eqz v2, :cond_7

    if-nez v12, :cond_9

    .line 318
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    .end local v23    # "rotation":I
    :cond_7
    :goto_4
    return-void

    .line 223
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "o":I
    .restart local v20    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v21    # "realPath":Ljava/lang/String;
    .restart local v23    # "rotation":I
    :pswitch_1
    :try_start_5
    const-string/jumbo v2, "PhotoUpload"

    const-string/jumbo v6, "Exif: 90"

    invoke-static {v2, v6}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/16 v23, 0x5a

    .line 226
    goto/16 :goto_1

    .line 228
    :pswitch_2
    const-string/jumbo v2, "PhotoUpload"

    const-string/jumbo v6, "Exif: 180"

    invoke-static {v2, v6}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/16 v23, 0xb4

    .line 231
    goto/16 :goto_1

    .line 233
    :pswitch_3
    const-string/jumbo v2, "PhotoUpload"

    const-string/jumbo v6, "Exif: 270"

    invoke-static {v2, v6}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 234
    const/16 v23, 0x10e

    goto/16 :goto_1

    .line 251
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v19    # "o":I
    .end local v21    # "realPath":Ljava/lang/String;
    :sswitch_0
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$300(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v18

    .line 252
    .restart local v18    # "left":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$400(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v6

    sub-float v24, v2, v6

    .line 253
    .restart local v24    # "top":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v22

    .line 254
    .restart local v22    # "right":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$600(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v6

    sub-float v13, v2, v6

    .line 256
    .restart local v13    # "bottom":F
    goto/16 :goto_2

    .line 258
    .end local v13    # "bottom":F
    .end local v18    # "left":F
    .end local v22    # "right":F
    .end local v24    # "top":F
    :sswitch_1
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v6

    sub-float v24, v2, v6

    .line 259
    .restart local v24    # "top":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$300(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v6

    sub-float v13, v2, v6

    .line 260
    .restart local v13    # "bottom":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$400(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v6

    sub-float v18, v2, v6

    .line 261
    .restart local v18    # "left":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$600(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v6

    sub-float v22, v2, v6

    .line 263
    .restart local v22    # "right":F
    goto/16 :goto_2

    .line 265
    .end local v13    # "bottom":F
    .end local v18    # "left":F
    .end local v22    # "right":F
    .end local v24    # "top":F
    :sswitch_2
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$500(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v6

    sub-float v18, v2, v6

    .line 266
    .restart local v18    # "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$600(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v24

    .line 267
    .restart local v24    # "top":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$300(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v6

    sub-float v22, v2, v6

    .line 268
    .restart local v22    # "right":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->access$400(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F

    move-result v13

    .line 270
    .restart local v13    # "bottom":F
    goto/16 :goto_2

    .line 300
    .end local v13    # "bottom":F
    .end local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "left":F
    .end local v20    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "right":F
    .end local v24    # "top":F
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "bmp":Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 305
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v6, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12}, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2$1;-><init>(Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    .line 315
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    .end local v23    # "rotation":I
    :catch_0
    move-exception v26

    .line 316
    .local v26, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 238
    .end local v26    # "x":Ljava/lang/Exception;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v21    # "realPath":Ljava/lang/String;
    .restart local v23    # "rotation":I
    :catch_1
    move-exception v2

    goto/16 :goto_1

    .line 207
    .end local v20    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v21    # "realPath":Ljava/lang/String;
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
