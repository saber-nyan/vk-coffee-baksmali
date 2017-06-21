.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createLocalImageView(Ljava/lang/String;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

.field final synthetic val$fileUri:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;->val$fileUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 684
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;->val$fileUri:Ljava/lang/String;

    const-string/jumbo v6, "%"

    const-string/jumbo v7, "%25"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 685
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Add attachment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .line 688
    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 687
    invoke-static {v2, v3, v6, v7}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnails(Landroid/content/ContentResolver;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 691
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 692
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 693
    const-string/jumbo v2, "_data"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 694
    .local v22, "thumb":Ljava/lang/String;
    const-string/jumbo v2, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Image thumb "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 697
    .end local v22    # "thumb":Ljava/lang/String;
    :cond_0
    if-eqz v15, :cond_1

    .line 698
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 703
    .end local v15    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "file"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "content"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 704
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "r"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 705
    .local v17, "fd":Landroid/os/ParcelFileDescriptor;
    const/16 v21, 0x0

    .line 706
    .local v21, "rotation":I
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "content"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    .line 708
    const/4 v2, 0x1

    :try_start_3
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "orientation"

    aput-object v6, v4, v2

    .line 709
    .local v4, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 710
    .local v14, "c":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 711
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 713
    :cond_3
    const-string/jumbo v2, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "img rotation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 717
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "file"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v21, :cond_6

    .line 718
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$1200(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v20

    .line 719
    .local v20, "realPath":Ljava/lang/String;
    if-eqz v20, :cond_6

    .line 721
    :try_start_5
    new-instance v16, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 722
    .local v16, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v2, "Orientation"

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v18

    .line 723
    .local v18, "o":I
    const-string/jumbo v2, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exif orientation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 724
    packed-switch v18, :pswitch_data_0

    .line 742
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v18    # "o":I
    .end local v20    # "realPath":Ljava/lang/String;
    :cond_6
    :goto_2
    :pswitch_0
    :try_start_6
    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 743
    .local v19, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 744
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-static {v2, v6, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 745
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v23

    .line 746
    .local v23, "ts":I
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 747
    .local v13, "bs":I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 748
    move/from16 v0, v23

    if-le v13, v0, :cond_7

    .line 749
    int-to-float v2, v13

    move/from16 v0, v23

    int-to-float v6, v0

    div-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 751
    :cond_7
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-static {v2, v6, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 752
    .local v5, "_bmp":Landroid/graphics/Bitmap;
    if-eqz v21, :cond_8

    .line 753
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 754
    .local v10, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v21

    int-to-float v2, v0

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 755
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 757
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_8
    move-object v12, v5

    .line 758
    .local v12, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 762
    .end local v5    # "_bmp":Landroid/graphics/Bitmap;
    .end local v13    # "bs":I
    .end local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v21    # "rotation":I
    .end local v23    # "ts":I
    :goto_3
    if-eqz v12, :cond_9

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v6, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11$1;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 773
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    :cond_9
    :goto_4
    return-void

    .line 726
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v18    # "o":I
    .restart local v20    # "realPath":Ljava/lang/String;
    .restart local v21    # "rotation":I
    :pswitch_1
    const/16 v21, 0x0

    .line 727
    goto/16 :goto_2

    .line 729
    :pswitch_2
    const/16 v21, 0x5a

    .line 730
    goto/16 :goto_2

    .line 732
    :pswitch_3
    const/16 v21, 0xb4

    .line 733
    goto/16 :goto_2

    .line 735
    :pswitch_4
    const/16 v21, 0x10e

    goto/16 :goto_2

    .line 760
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "o":I
    .end local v20    # "realPath":Ljava/lang/String;
    .end local v21    # "rotation":I
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 770
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v24

    .line 771
    .local v24, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 738
    .end local v24    # "x":Ljava/lang/Exception;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "realPath":Ljava/lang/String;
    .restart local v21    # "rotation":I
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .line 714
    .end local v20    # "realPath":Ljava/lang/String;
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .line 700
    .end local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v21    # "rotation":I
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
