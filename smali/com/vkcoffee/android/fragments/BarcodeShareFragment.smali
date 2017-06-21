.class public Lcom/vkcoffee/android/fragments/BarcodeShareFragment;
.super Landroid/app/DialogFragment;
.source "BarcodeShareFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/barcode/DecodeResultListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private decodeRunnable:Lcom/vkcoffee/android/barcode/DecodeRunnable;

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private hasSurface:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 161
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Camera not null on initialization"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Cannot init camera"

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080165

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 170
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    new-instance v3, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$3;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$3;-><init>(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 163
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    .line 164
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 165
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Camera is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    invoke-static {v2}, Lcom/vkcoffee/android/barcode/CameraConfigurationManager;->configure(Landroid/hardware/Camera;)V

    .line 182
    :try_start_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 183
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 184
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    :goto_1
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->updateCameraRotation()V

    .line 191
    new-instance v2, Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    invoke-direct {v2, v3, v4, p0}, Lcom/vkcoffee/android/barcode/DecodeRunnable;-><init>(Landroid/app/Activity;Landroid/hardware/Camera;Lcom/vkcoffee/android/barcode/DecodeResultListener;)V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->decodeRunnable:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    .line 192
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->decodeRunnable:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 193
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->decodeRunnable:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-virtual {v2}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->startScanning()V

    goto :goto_0

    .line 185
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Cannot start preview"

    invoke-static {v2, v3, v0}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private updateCameraRotation()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 241
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 308
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v7, "window"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 245
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 246
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 248
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-ne v4, v9, :cond_2

    :cond_1
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    if-lt v4, v7, :cond_4

    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-eq v4, v6, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-ne v4, v10, :cond_8

    :cond_3
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    if-le v4, v7, :cond_8

    .line 249
    :cond_4
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-eq v4, v6, :cond_5

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-ne v4, v10, :cond_7

    :cond_5
    move v2, v6

    .line 250
    .local v2, "horizontal":Z
    :goto_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 281
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v7, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$4;

    invoke-direct {v7, p0, v2}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$4;-><init>(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;Z)V

    invoke-virtual {v4, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 304
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    if-le v4, v7, :cond_b

    sget-boolean v4, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v4, :cond_b

    move v1, v6

    .line 306
    .local v1, "horLayout":Z
    :goto_3
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    move v6, v5

    :cond_6
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 307
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    if-eqz v2, :cond_c

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    move v6, v4

    :goto_4
    if-eqz v1, :cond_d

    move v4, v5

    :goto_5
    invoke-virtual {v7, v5, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .end local v1    # "horLayout":Z
    .end local v2    # "horizontal":Z
    :cond_7
    move v2, v5

    .line 249
    goto :goto_1

    .line 252
    .restart local v2    # "horizontal":Z
    :pswitch_0
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    const/16 v7, 0x5a

    invoke-virtual {v4, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_2

    .line 255
    :pswitch_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_2

    .line 258
    :pswitch_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    const/16 v7, 0x10e

    invoke-virtual {v4, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_2

    .line 261
    :pswitch_3
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    const/16 v7, 0xb4

    invoke-virtual {v4, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_2

    .line 265
    .end local v2    # "horizontal":Z
    :cond_8
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-ne v4, v9, :cond_a

    :cond_9
    move v2, v6

    .line 266
    .restart local v2    # "horizontal":Z
    :goto_6
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_2

    .line 268
    :pswitch_4
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_2

    .end local v2    # "horizontal":Z
    :cond_a
    move v2, v5

    .line 265
    goto :goto_6

    .line 271
    .restart local v2    # "horizontal":Z
    :pswitch_5
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    const/16 v7, 0x10e

    invoke-virtual {v4, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_2

    .line 274
    :pswitch_6
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    const/16 v7, 0xb4

    invoke-virtual {v4, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_2

    .line 277
    :pswitch_7
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    const/16 v7, 0x5a

    invoke-virtual {v4, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_2

    :cond_b
    move v1, v5

    .line 304
    goto :goto_3

    .restart local v1    # "horLayout":Z
    :cond_c
    move v6, v5

    .line 307
    goto :goto_4

    :cond_d
    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    goto :goto_5

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 266
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 155
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->updateCameraRotation()V

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->setStyle(II)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const v5, 0x7f030053

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    .line 67
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    new-instance v6, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$1;-><init>(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)V

    const-wide/16 v12, 0x7d0

    invoke-virtual {v5, v6, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    const v6, 0x7f1001a8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 79
    .local v21, "myCode":Landroid/widget/ImageView;
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v9, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v5, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v4, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v4}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 82
    .local v4, "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "http://vk.com/id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v7, 0xb4

    const/16 v8, 0xb4

    invoke-virtual/range {v4 .. v9}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v20

    .line 83
    .local v20, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v11, v5, [I

    .line 84
    .local v11, "pixels":[I
    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 85
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_2

    .line 86
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_1

    .line 87
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int v5, v5, v18

    add-int v6, v5, v19

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, -0x1000000

    :goto_2
    aput v5, v11, v6

    .line 86
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 87
    :cond_0
    const/4 v5, -0x1

    goto :goto_2

    .line 85
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 90
    .end local v19    # "j":I
    :cond_2
    const/4 v12, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v16

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v17

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 91
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v4    # "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    .end local v9    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "pixels":[I
    .end local v18    # "i":I
    .end local v20    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    return-object v5

    .line 92
    :catch_0
    move-exception v22

    .line 93
    .local v22, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public onDecodeResult(Lcom/google/zxing/Result;)V
    .locals 5
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "text":Ljava/lang/String;
    const-string/jumbo v3, "http://vk\\.com/id[0-9]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 203
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "nearby_dlg"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 204
    .local v1, "nearby":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 207
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->startActivity(Landroid/content/Intent;)V

    .line 215
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "nearby":Landroid/app/Fragment;
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->decodeRunnable:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    if-eqz v3, :cond_1

    .line 212
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->decodeRunnable:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-virtual {v3}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->startScanning()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    .line 103
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 313
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 316
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->decodeRunnable:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->decodeRunnable:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-virtual {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->stop()V

    .line 136
    iput-object v3, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->decodeRunnable:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 140
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 141
    iput-object v3, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->camera:Landroid/hardware/Camera;

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    const v2, 0x7f1001a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 148
    .local v0, "textureView":Landroid/view/TextureView;
    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 149
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const v4, 0x3f800008    # 1.000001f

    .line 107
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 108
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->view:Landroid/view/View;

    const v3, 0x7f1001a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    .line 109
    .local v1, "textureView":Landroid/view/TextureView;
    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setScaleX(F)V

    .line 110
    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setScaleY(F)V

    .line 111
    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 112
    .local v0, "texture":Landroid/graphics/SurfaceTexture;
    new-instance v2, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$2;-><init>(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->hasSurface:Z

    if-eqz v2, :cond_0

    .line 125
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->initCamera(Landroid/graphics/SurfaceTexture;)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 218
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "Surface created"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->hasSurface:Z

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->hasSurface:Z

    .line 222
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->initCamera(Landroid/graphics/SurfaceTexture;)V

    .line 224
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->hasSurface:Z

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 228
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 238
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "l"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 320
    return-void
.end method
