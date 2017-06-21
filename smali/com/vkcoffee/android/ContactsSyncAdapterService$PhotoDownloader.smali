.class Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoDownloader;
.super Ljava/lang/Object;
.source "ContactsSyncAdapterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ContactsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoDownloader"
.end annotation


# static fields
.field private static final SIZES_FALLBACK:[C


# instance fields
.field reqs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;",
            ">;"
        }
    .end annotation
.end field

.field results:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoDownloader;->SIZES_FALLBACK:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x7as
        0x79s
        0x78s
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, "_reqs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    .local p2, "_results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p1, p0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoDownloader;->reqs:Ljava/util/Vector;

    .line 678
    iput-object p2, p0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoDownloader;->results:Ljava/util/Vector;

    .line 679
    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 683
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$608()I

    .line 684
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "caller_is_syncadapter"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    .line 685
    .local v13, "dataUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoDownloader;->reqs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoDownloader;->reqs:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;

    .line 687
    .local v22, "req":Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->photo:Lcom/vkcoffee/android/Photo;

    if-nez v2, :cond_2

    .line 688
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    .line 735
    :goto_1
    :try_start_0
    move-object/from16 v0, v22

    iget v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->existingID:I

    if-lez v2, :cond_7

    .line 736
    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->existingID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 737
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data15"

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    .line 738
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data_sync1"

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    .line 739
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "is_super_primary"

    const/4 v4, 0x1

    .line 740
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "is_primary"

    const/4 v4, 0x1

    .line 741
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 742
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    .line 743
    .local v18, "op":Landroid/content/ContentProviderOperation;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v19, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$800()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "com.android.contacts"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 767
    .end local v18    # "op":Landroid/content/ContentProviderOperation;
    .end local v19    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_2
    const-string/jumbo v3, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Downloaded "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " [size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    if-eqz v2, :cond_8

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "], "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$900()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 769
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$1000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 771
    :try_start_1
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$1000()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    :goto_4
    :try_start_2
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 691
    :cond_2
    const/16 v16, 0x0

    .line 692
    .local v16, "img":Lcom/vkcoffee/android/Photo$Image;
    const/4 v10, 0x0

    .line 693
    .local v10, "closestSize":I
    :try_start_3
    sget-object v3, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoDownloader;->SIZES_FALLBACK:[C

    array-length v4, v3

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_4

    aget-char v9, v3, v2

    .line 694
    .local v9, "c":C
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->photo:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v5, v9}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v15

    .line 695
    .local v15, "i":Lcom/vkcoffee/android/Photo$Image;
    if-eqz v15, :cond_3

    .line 696
    iget v5, v15, Lcom/vkcoffee/android/Photo$Image;->width:I

    int-to-float v5, v5

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 697
    .local v23, "size":I
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$700()I

    move-result v5

    sub-int v5, v23, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$700()I

    move-result v6

    sub-int v6, v10, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 698
    move/from16 v10, v23

    .line 699
    move-object/from16 v16, v15

    .line 693
    .end local v23    # "size":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 703
    .end local v9    # "c":C
    .end local v15    # "i":Lcom/vkcoffee/android/Photo$Image;
    :cond_4
    if-nez v16, :cond_5

    .line 704
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->photo:Lcom/vkcoffee/android/Photo;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v16

    .line 706
    :cond_5
    new-instance v26, Ljava/io/File;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sync_temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 707
    .local v26, "tmpFile":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->createNewFile()Z

    .line 708
    new-instance v25, Ljava/io/FileOutputStream;

    invoke-direct/range {v25 .. v26}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 709
    .local v25, "stream":Ljava/io/FileOutputStream;
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v4, v5, v0}, Lme/grishka/appkit/imageloader/ImageCache;->downloadFile(Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Ljava/io/OutputStream;)Z

    .line 710
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 711
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 712
    .local v17, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v14

    .line 713
    .local v14, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CropRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 715
    .local v24, "srcSize":I
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->cropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v11, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 716
    .local v11, "cropRect":Landroid/graphics/Rect;
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Decoding bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", out size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const/4 v2, 0x0

    invoke-virtual {v14, v11, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 718
    .local v8, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 719
    const/4 v14, 0x0

    .line 720
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 721
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 722
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$700()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 723
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$700()I

    move-result v2

    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$700()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v8, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 725
    :cond_6
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 726
    .local v20, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 727
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->photo:Lcom/vkcoffee/android/Photo;

    iget v3, v3, Lcom/vkcoffee/android/Photo;->ownerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->photo:Lcom/vkcoffee/android/Photo;

    iget v3, v3, Lcom/vkcoffee/android/Photo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 729
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "cropRect":Landroid/graphics/Rect;
    .end local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v17    # "in":Ljava/io/FileInputStream;
    .end local v20    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v24    # "srcSize":I
    .end local v25    # "stream":Ljava/io/FileOutputStream;
    .end local v26    # "tmpFile":Ljava/io/File;
    :catch_0
    move-exception v27

    .line 730
    .local v27, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 747
    .end local v10    # "closestSize":I
    .end local v16    # "img":Lcom/vkcoffee/android/Photo$Image;
    .end local v27    # "x":Ljava/lang/Exception;
    :cond_7
    :try_start_4
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$800()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sync1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget v6, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 748
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 749
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 750
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 751
    .local v21, "rawContactID":I
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 752
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .restart local v19    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id"

    .line 754
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    .line 755
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data15"

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    .line 756
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "is_super_primary"

    const/4 v4, 0x1

    .line 757
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "is_primary"

    const/4 v4, 0x1

    .line 758
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data_sync1"

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    .line 759
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 760
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 753
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$800()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "com.android.contacts"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 764
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v19    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v21    # "rawContactID":I
    :catch_1
    move-exception v27

    .line 765
    .restart local v27    # "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 767
    .end local v27    # "x":Ljava/lang/Exception;
    :cond_8
    const-string/jumbo v2, "NULL"

    goto/16 :goto_3

    .line 777
    .end local v22    # "req":Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    :cond_9
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$610()I

    .line 778
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Photo DL thread exiting"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :try_start_5
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$1100()Ljava/util/concurrent/CyclicBarrier;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 783
    :goto_6
    return-void

    .line 781
    :catch_2
    move-exception v2

    goto :goto_6

    .line 772
    .restart local v22    # "req":Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    :catch_3
    move-exception v2

    goto/16 :goto_4
.end method
