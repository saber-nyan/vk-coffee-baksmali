.class public Lcom/vk/attachpicker/GraffitiActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GraffitiActivity.java"


# static fields
.field private static final SIZE:I = 0x2d0


# instance fields
.field private colorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

.field private drawingCancel:Landroid/view/View;

.field private drawingContainer:Landroid/widget/FrameLayout;

.field private drawingSend:Landroid/view/View;

.field private drawingUndo:Landroid/view/View;

.field private drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

.field private drawingWidthButton:Landroid/view/View;

.field private final exitLock:Lcom/vk/attachpicker/util/TimeoutLock;

.field private graffitiAvatar:Ljava/lang/String;

.field private graffitiBitmap:Landroid/graphics/Bitmap;

.field private graffitiContainer:Landroid/view/View;

.field private graffitiTitle:Ljava/lang/String;

.field private imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

.field private innerUserContainer:Landroid/widget/LinearLayout;

.field private lastOrientation:I

.field private final orientationChangeHandler:Landroid/os/Handler;

.field private final orientationChangeRunnable:Ljava/lang/Runnable;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private preview:Landroid/view/View;

.field private resultContainer:Lcom/vk/attachpicker/widget/RotateLayout;

.field private sendButton:Landroid/widget/TextView;

.field private userAvatar:Landroid/widget/ImageView;

.field private userContainer:Landroid/widget/FrameLayout;

.field private userName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/vk/attachpicker/util/TimeoutLock;

    const-wide/16 v2, 0x12c

    invoke-direct {v0, v2, v3}, Lcom/vk/attachpicker/util/TimeoutLock;-><init>(J)V

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->exitLock:Lcom/vk/attachpicker/util/TimeoutLock;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->orientationChangeHandler:Landroid/os/Handler;

    .line 44
    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->orientationChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/GraffitiActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/GraffitiActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/GraffitiActivity;->onOrientationEvent(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/GraffitiActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->preview:Landroid/view/View;

    return-object v0
.end method

.method private handleOrientationChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 180
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->resultContainer:Lcom/vk/attachpicker/widget/RotateLayout;

    iget v3, p0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    neg-int v3, v3

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/widget/RotateLayout;->setAngle(I)V

    .line 182
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingCancel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 183
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingSend:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 184
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingWidthButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 185
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingUndo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 187
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->userName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 189
    iget v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    int-to-float v3, v3

    .line 191
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 192
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 194
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->userName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 195
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 196
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->innerUserContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/vk/attachpicker/GraffitiActivity;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/vk/attachpicker/GraffitiActivity;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 200
    .local v0, "avatarTranslation":F
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->innerUserContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/vk/attachpicker/GraffitiActivity;->userName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/vk/attachpicker/GraffitiActivity;->userName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 202
    .local v1, "nameTranslation":F
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    int-to-float v3, v3

    .line 203
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 204
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 206
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->userName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 207
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 208
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method static synthetic lambda$finish$70(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .prologue
    .line 334
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onCreate$65(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 131
    return-void
.end method

.method private onOrientationEvent(I)V
    .locals 6
    .param p1, "deg"    # I

    .prologue
    .line 157
    if-lez p1, :cond_2

    .line 158
    rem-int/lit8 v1, p1, 0x5a

    .line 160
    .local v1, "tmpDeg":I
    const/16 v2, 0x2d

    if-ge v1, v2, :cond_3

    .line 161
    sub-int v0, p1, v1

    .line 165
    .local v0, "realDeg":I
    :goto_0
    rem-int/lit16 v0, v0, 0x168

    .line 166
    const/16 v2, 0xb4

    if-le v0, v2, :cond_0

    .line 167
    add-int/lit16 v0, v0, -0x168

    .line 169
    :cond_0
    mul-int/lit8 v0, v0, -0x1

    .line 171
    iget v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    if-eq v0, v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->orientationChangeHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vk/attachpicker/GraffitiActivity;->orientationChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->orientationChangeHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vk/attachpicker/GraffitiActivity;->orientationChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    :cond_1
    iput v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    .line 177
    .end local v0    # "realDeg":I
    .end local v1    # "tmpDeg":I
    :cond_2
    return-void

    .line 163
    .restart local v1    # "tmpDeg":I
    :cond_3
    add-int/lit8 v2, p1, 0x5a

    sub-int v0, v2, v1

    .restart local v0    # "realDeg":I
    goto :goto_0
.end method

.method private setResultAndFinish()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 279
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 284
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/vk/attachpicker/util/FileUtils;->getTempGraffitiFile()Ljava/io/File;

    move-result-object v9

    .line 285
    .local v9, "output":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 286
    .local v8, "fos":Ljava/io/FileOutputStream;
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 287
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 289
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v10, "result":Landroid/content/Intent;
    const-string/jumbo v11, "result_new_graffiti"

    new-instance v0, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    .line 291
    invoke-static {}, Lcom/vkcoffee/android/upload/Upload;->getNewID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    .line 290
    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 293
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v10}, Lcom/vk/attachpicker/GraffitiActivity;->setResult(ILandroid/content/Intent;)V

    .line 294
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "output":Ljava/io/File;
    .end local v10    # "result":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 296
    .local v7, "e":Ljava/lang/Exception;
    const v0, 0x7f08036f

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showResult()V
    .locals 19

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v15}, Lcom/vk/attachpicker/drawing/DrawingView;->isDefault()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 276
    :goto_0
    return-void

    .line 219
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v15}, Lcom/vk/attachpicker/drawing/DrawingView;->getMeasuredWidth()I

    move-result v15

    int-to-float v14, v15

    .line 220
    .local v14, "w":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v15}, Lcom/vk/attachpicker/drawing/DrawingView;->getMeasuredHeight()I

    move-result v15

    int-to-float v11, v15

    .line 221
    .local v11, "h":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v15}, Lcom/vk/attachpicker/drawing/DrawingView;->getDrawingStateCopy()Lcom/vk/attachpicker/drawing/DrawingState;

    move-result-object v5

    .line 223
    .local v5, "ds":Lcom/vk/attachpicker/drawing/DrawingState;
    invoke-virtual {v5}, Lcom/vk/attachpicker/drawing/DrawingState;->getMergedPath()Landroid/graphics/Path;

    move-result-object v12

    .line 224
    .local v12, "mergedPath":Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 225
    .local v2, "bounds":Landroid/graphics/RectF;
    const/4 v15, 0x1

    invoke-virtual {v12, v2, v15}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 227
    invoke-virtual {v5}, Lcom/vk/attachpicker/drawing/DrawingState;->getBaseDrawWidth()F

    move-result v15

    invoke-virtual {v5}, Lcom/vk/attachpicker/drawing/DrawingState;->getMaxWidthMultiplier()F

    move-result v16

    mul-float v15, v15, v16

    float-to-int v15, v15

    div-int/lit8 v15, v15, 0x2

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v16

    add-int v13, v15, v16

    .line 228
    .local v13, "p":I
    iget v15, v2, Landroid/graphics/RectF;->left:F

    int-to-float v0, v13

    move/from16 v16, v0

    sub-float v15, v15, v16

    iput v15, v2, Landroid/graphics/RectF;->left:F

    .line 229
    iget v15, v2, Landroid/graphics/RectF;->top:F

    int-to-float v0, v13

    move/from16 v16, v0

    sub-float v15, v15, v16

    iput v15, v2, Landroid/graphics/RectF;->top:F

    .line 230
    iget v15, v2, Landroid/graphics/RectF;->right:F

    int-to-float v0, v13

    move/from16 v16, v0

    add-float v15, v15, v16

    iput v15, v2, Landroid/graphics/RectF;->right:F

    .line 231
    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v13

    move/from16 v16, v0

    add-float v15, v15, v16

    iput v15, v2, Landroid/graphics/RectF;->bottom:F

    .line 232
    iget v15, v2, Landroid/graphics/RectF;->left:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_1

    .line 233
    const/4 v15, 0x0

    iput v15, v2, Landroid/graphics/RectF;->left:F

    .line 235
    :cond_1
    iget v15, v2, Landroid/graphics/RectF;->top:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_2

    .line 236
    const/4 v15, 0x0

    iput v15, v2, Landroid/graphics/RectF;->top:F

    .line 238
    :cond_2
    iget v15, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v15, v15, v14

    if-lez v15, :cond_3

    .line 239
    iput v14, v2, Landroid/graphics/RectF;->right:F

    .line 241
    :cond_3
    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v15, v15, v11

    if-lez v15, :cond_4

    .line 242
    iput v11, v2, Landroid/graphics/RectF;->bottom:F

    .line 245
    :cond_4
    iget v15, v2, Landroid/graphics/RectF;->left:F

    neg-float v15, v15

    iget v0, v2, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lcom/vk/attachpicker/drawing/DrawingState;->postTranslate(FF)V

    .line 247
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    .line 248
    .local v10, "graffitiWidth":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 249
    .local v8, "graffitiHeigth":F
    const/high16 v15, 0x40000000    # 2.0f

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v16

    div-float v16, v14, v16

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v17

    div-float v17, v11, v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 250
    .local v9, "graffitiScale":F
    mul-float/2addr v10, v9

    .line 251
    mul-float/2addr v8, v9

    .line 252
    const/high16 v15, 0x44340000    # 720.0f

    cmpl-float v15, v10, v15

    if-gtz v15, :cond_5

    const/high16 v15, 0x44340000    # 720.0f

    cmpl-float v15, v8, v15

    if-lez v15, :cond_6

    .line 253
    :cond_5
    const/high16 v15, 0x44340000    # 720.0f

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v16

    div-float v4, v15, v16

    .line 254
    .local v4, "downscale":F
    mul-float/2addr v9, v4

    .line 255
    mul-float/2addr v10, v4

    .line 256
    mul-float/2addr v8, v4

    .line 258
    .end local v4    # "downscale":F
    :cond_6
    float-to-int v7, v10

    .line 259
    .local v7, "finalWidth":I
    float-to-int v6, v8

    .line 261
    .local v6, "finalHeight":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v9, v15, v0}, Lcom/vk/attachpicker/drawing/DrawingState;->postScale(FFF)V

    .line 263
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiBitmap:Landroid/graphics/Bitmap;

    .line 264
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 265
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v5, v3}, Lcom/vk/attachpicker/drawing/DrawingState;->draw(Landroid/graphics/Canvas;)V

    .line 266
    move-object/from16 v0, p0

    iget v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    if-eqz v15, :cond_7

    .line 267
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/GraffitiActivity;->lastOrientation:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/vk/attachpicker/util/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiBitmap:Landroid/graphics/Bitmap;

    .line 270
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    const v16, 0x3fe66666    # 1.8f

    const v17, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vk/attachpicker/util/BitmapUtils;->getAspectRatio(Landroid/graphics/Bitmap;)F

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/vk/attachpicker/widget/AspectRatioImageView;->setAspectRatio(F)V

    .line 271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/vk/attachpicker/widget/AspectRatioImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->preview:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setAlpha(F)V

    .line 274
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->preview:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/GraffitiActivity;->preview:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0xc8

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 314
    iget-object v1, p0, Lcom/vk/attachpicker/GraffitiActivity;->exitLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v1}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/GraffitiActivity;->exitLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v1}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 319
    iget-object v1, p0, Lcom/vk/attachpicker/GraffitiActivity;->preview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/vk/attachpicker/GraffitiActivity;->preview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/vk/attachpicker/GraffitiActivity$2;

    invoke-direct {v2, p0}, Lcom/vk/attachpicker/GraffitiActivity$2;-><init>(Lcom/vk/attachpicker/GraffitiActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 325
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/drawing/DrawingView;->isDefault()Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    .local v0, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 330
    const v1, 0x7f08036a

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 331
    const v1, 0x7f080394

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$13;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    const v1, 0x7f080376

    invoke-static {}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$14;->lambdaFactory$()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    invoke-virtual {v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 337
    .end local v0    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    :cond_2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    goto :goto_0
.end method

.method synthetic lambda$finish$69(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 332
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 333
    return-void
.end method

.method synthetic lambda$new$56()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/vk/attachpicker/GraffitiActivity;->handleOrientationChange()V

    return-void
.end method

.method synthetic lambda$null$57(I)V
    .locals 2
    .param p1, "widthIndex"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    sget-object v1, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/drawing/DrawingView;->setWidthMultiplier(F)V

    return-void
.end method

.method synthetic lambda$onCreate$58(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingWidthButton:Landroid/view/View;

    iget-object v1, p0, Lcom/vk/attachpicker/GraffitiActivity;->colorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

    .line 96
    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/ColorSelectorView;->getSelectedColor()I

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    .line 97
    invoke-virtual {v2}, Lcom/vk/attachpicker/drawing/DrawingView;->getWidthMultiplier()F

    move-result v2

    invoke-static {v2}, Lcom/vk/attachpicker/drawing/DrawingState;->findIntIndex(F)I

    move-result v2

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$15;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;

    move-result-object v3

    .line 95
    invoke-static {v0, v1, v2, v3}, Lcom/vk/attachpicker/widget/WidthSelectorView;->show(Landroid/view/View;IILcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;)V

    .line 99
    return-void
.end method

.method synthetic lambda$onCreate$59(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/drawing/DrawingView;->setPaintStrokeColor(I)V

    .line 103
    return-void
.end method

.method synthetic lambda$onCreate$60(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->undo()V

    .line 106
    iget-object v1, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingUndo:Landroid/view/View;

    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$onCreate$61(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->clear()V

    .line 110
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingUndo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$62()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingUndo:Landroid/view/View;

    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$onCreate$63(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/vk/attachpicker/GraffitiActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$64(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/vk/attachpicker/GraffitiActivity;->showResult()V

    return-void
.end method

.method synthetic lambda$onCreate$66(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/vk/attachpicker/GraffitiActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$67(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/vk/attachpicker/GraffitiActivity;->setResultAndFinish()V

    return-void
.end method

.method synthetic lambda$onCreate$68()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/vk/attachpicker/GraffitiActivity;->userContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 148
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 149
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f03010f

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/vk/attachpicker/GraffitiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "graffiti_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiTitle:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/vk/attachpicker/GraffitiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "graffiti_avatar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiAvatar:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/vk/attachpicker/GraffitiActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/vk/attachpicker/GraffitiActivity$1;-><init>(Lcom/vk/attachpicker/GraffitiActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 82
    const v0, 0x7f1002e5

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingContainer:Landroid/widget/FrameLayout;

    .line 84
    const v0, 0x7f1002e6

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/drawing/DrawingView;

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    .line 85
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/drawing/DrawingView;->setTouchEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/drawing/DrawingView;->setFixTouchPosition(Z)V

    .line 88
    const v0, 0x7f1002e9

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/ColorSelectorView;

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->colorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

    .line 89
    const v0, 0x7f1002e8

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingWidthButton:Landroid/view/View;

    .line 90
    const v0, 0x7f1002ea

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingCancel:Landroid/view/View;

    .line 91
    const v0, 0x7f1002eb

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingSend:Landroid/view/View;

    .line 92
    const v0, 0x7f1002ec

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingUndo:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingWidthButton:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->colorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$3;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/ColorSelectorView;->setOnColorSelectedListener(Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;)V

    .line 104
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingUndo:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$4;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingUndo:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$5;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$6;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/drawing/DrawingView;->setOnDownListener(Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;)V

    .line 116
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingUndo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingCancel:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$7;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingSend:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$8;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f1002ed

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/RotateLayout;

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->resultContainer:Lcom/vk/attachpicker/widget/RotateLayout;

    .line 123
    const v0, 0x7f100306

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->preview:Landroid/view/View;

    .line 124
    const v0, 0x7f100307

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiContainer:Landroid/view/View;

    .line 125
    const v0, 0x7f100308

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/AspectRatioImageView;

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    .line 126
    const v0, 0x7f100309

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->sendButton:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->preview:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AspectRatioImageView;->setMaxHeight(I)V

    .line 130
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AspectRatioImageView;->setMaxWidth(I)V

    .line 131
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    invoke-static {}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$9;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AspectRatioImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->preview:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$10;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->sendButton:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$11;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f1002e1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->userContainer:Landroid/widget/FrameLayout;

    .line 137
    const v0, 0x7f1002e2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/GraffitiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->innerUserContainer:Landroid/widget/LinearLayout;

    .line 138
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->innerUserContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f1002e3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->userAvatar:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->innerUserContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f1002e4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->userName:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiAvatar:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->userAvatar:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v2, p0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiAvatar:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->userName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vk/attachpicker/GraffitiActivity;->graffitiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->userContainer:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$12;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/util/Utils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->drawingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 152
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->userContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 309
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 310
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 303
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 304
    return-void
.end method
