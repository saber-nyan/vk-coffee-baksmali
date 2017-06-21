.class public Lcom/vkontakte/android/ui/animation/MovieDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "MovieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/animation/MovieDrawable$MovieDrawable$$Lambda$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field volatile height:I

.field volatile isRecycled:Z

.field volatile isRunning:Z

.field mDecoder:Ljava/lang/Runnable;

.field final mInvalidateAction:Ljava/lang/Runnable;

.field mReadyCallback:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkontakte/android/ui/animation/MovieDrawable;",
            ">;"
        }
    .end annotation
.end field

.field final mWorkerThread:Lcom/vkcoffee/android/background/WorkerThread;

.field volatile nativePtr:J

.field volatile path:Ljava/lang/String;

.field volatile renderingBitmap:Landroid/graphics/Bitmap;

.field volatile width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->TAG:Ljava/lang/String;

    .line 94
    const-string v0, "vkvideo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 21
    new-instance v0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;-><init>(Lcom/vkontakte/android/ui/animation/MovieDrawable;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->mDecoder:Ljava/lang/Runnable;

    .line 75
    invoke-static {p0}, Lcom/vkontakte/android/ui/animation/MovieDrawable$MovieDrawable$$Lambda$1;->lambdaFactory$(Lcom/vkontakte/android/ui/animation/MovieDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->mInvalidateAction:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/vkcoffee/android/background/WorkerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gif decoder #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->mWorkerThread:Lcom/vkcoffee/android/background/WorkerThread;

    .line 98
    iput-object p1, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->path:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->mWorkerThread:Lcom/vkcoffee/android/background/WorkerThread;

    invoke-virtual {v0}, Lcom/vkcoffee/android/background/WorkerThread;->start()V

    .line 100
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static native nativeCreate(Ljava/lang/String;Z)J
.end method

.method static native nativeDecode(J)D
.end method

.method static native nativeGetFrame(JLandroid/graphics/Bitmap;)V
.end method

.method static native nativeGetSize(J)I
.end method

.method static native nativeRelease(J)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRecycled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 125
    iget-wide v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativePtr:J

    iget-object v2, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativeGetFrame(JLandroid/graphics/Bitmap;)V

    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v0, v4, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 151
    return-void

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 150
    throw v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->width:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, -0x2

    return v0
.end method

.method public getRenderingBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRunning:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRunning:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRunning:Z

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRecycled:Z

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->releaseInternal()V

    goto :goto_0
.end method

.method releaseInternal()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 181
    iget-wide v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 182
    iget-wide v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativePtr:J

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativeRelease(J)V

    .line 183
    iput-wide v2, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativePtr:J

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 189
    :cond_0
    return-void
.end method

.method public setReadyCallback(Lcom/vkcoffee/android/functions/VoidF1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkontakte/android/ui/animation/MovieDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "callback":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkontakte/android/ui/animation/MovieDrawable;>;"
    iput-object p1, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->mReadyCallback:Lcom/vkcoffee/android/functions/VoidF1;

    .line 166
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRunning:Z

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRunning:Z

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->mWorkerThread:Lcom/vkcoffee/android/background/WorkerThread;

    iget-object v1, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->mDecoder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;)V

    .line 138
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRunning:Z

    .line 158
    return-void
.end method
