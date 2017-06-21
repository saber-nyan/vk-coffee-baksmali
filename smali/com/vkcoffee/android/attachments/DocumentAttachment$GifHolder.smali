.class Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "DocumentAttachment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/DocumentAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/attachments/DocumentAttachment;",
        ">;",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field static final sGifs:Lcom/vkcoffee/android/cache/Gifs;


# instance fields
.field attached:Z

.field failed:Z

.field mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

.field final mAutoPlay:Z

.field final mBackground:Landroid/view/View;

.field mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

.field final mError:Landroid/view/View;

.field final mGifLabel:Landroid/view/View;

.field final mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

.field final mProgress:Landroid/widget/ProgressBar;

.field final mProgressDrawable:Lcom/vkcoffee/android/ui/RadialProgressDrawable;

.field final mSize:Landroid/widget/TextView;

.field mTask:Lcom/vkcoffee/android/background/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/background/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field triedToLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/vkcoffee/android/cache/Gifs;->get()Lcom/vkcoffee/android/cache/Gifs;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->sGifs:Lcom/vkcoffee/android/cache/Gifs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 240
    const v0, 0x7f030036

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 222
    new-instance v0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgressDrawable:Lcom/vkcoffee/android/ui/RadialProgressDrawable;

    .line 230
    invoke-static {}, Lcom/vkcoffee/android/cache/Gifs;->allowAutoPlay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAutoPlay:Z

    .line 234
    iput-boolean v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->attached:Z

    .line 235
    iput-boolean v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->triedToLoad:Z

    .line 236
    iput-boolean v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->failed:Z

    .line 241
    const v0, 0x7f100141

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/RatioImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    .line 242
    const v0, 0x7f100145

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mSize:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f100144

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgress:Landroid/widget/ProgressBar;

    .line 244
    const v0, 0x7f100143

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mGifLabel:Landroid/view/View;

    .line 245
    const v0, 0x7f100142

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mBackground:Landroid/view/View;

    .line 246
    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mError:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setOrientation(I)V

    .line 249
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgressDrawable:Lcom/vkcoffee/android/ui/RadialProgressDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->setProgressColor(I)V

    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgressDrawable:Lcom/vkcoffee/android/ui/RadialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 254
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/attachments/DocumentAttachment;)V
    .locals 6
    .param p1, "item"    # Lcom/vkcoffee/android/attachments/DocumentAttachment;

    .prologue
    const v4, 0x3faa9fbe    # 1.333f

    .line 259
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    .line 260
    iget v2, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->height:I

    int-to-float v2, v2

    iget v3, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->width:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 261
    .local v1, "ratio":F
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageRatio(F)V

    .line 262
    cmpl-float v2, v1, v4

    if-lez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$1;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$1;-><init>(Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;Lcom/vkcoffee/android/attachments/DocumentAttachment;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 275
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->sGifs:Lcom/vkcoffee/android/cache/Gifs;

    invoke-virtual {p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/cache/Gifs;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 276
    .local v0, "cached":Z
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mSize:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAutoPlay:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAutoPlay:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 278
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mSize:Landroid/widget/TextView;

    iget v3, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->size:I

    int-to-long v4, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->showInitialLayout()V

    .line 281
    return-void

    .line 276
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 218
    check-cast p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->bind(Lcom/vkcoffee/android/attachments/DocumentAttachment;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 285
    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->triedToLoad:Z

    if-nez v2, :cond_0

    .line 286
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->start(Z)V

    .line 337
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 289
    .local v1, "locationInWindow":[I
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f1001bf

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 290
    .local v0, "list":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    new-instance v5, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;

    invoke-direct {v5, p0, p1, v1, v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;-><init>(Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;Landroid/view/View;[ILandroid/view/View;)V

    iget-object v6, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    .line 335
    invoke-virtual {v6}, Lcom/vkcoffee/android/background/AsyncTask;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 290
    :cond_1
    invoke-static {v2, v4, v5, v3}, Lcom/vkcoffee/android/gifs/GifViewer;->start(Landroid/app/Activity;Lcom/vkcoffee/android/attachments/DocumentAttachment;Lcom/vkcoffee/android/gifs/GifViewer$Provider;Z)Lcom/vkcoffee/android/gifs/GifViewer;

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 341
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->attached:Z

    .line 343
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 344
    .local v1, "location":[I
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1001bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, "list":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;-><init>(Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;Landroid/view/View;[ILandroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 379
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->attached:Z

    .line 384
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->recycle()V

    .line 386
    iput-object v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    invoke-virtual {v0}, Lcom/vkcoffee/android/background/AsyncTask;->cancel()V

    .line 390
    iput-object v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    .line 392
    :cond_1
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 419
    return-void
.end method

.method public showDone()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 422
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mGifLabel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mError:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    return-void
.end method

.method public showError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgressDrawable:Lcom/vkcoffee/android/ui/RadialProgressDrawable;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->setThickness(F)V

    .line 432
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 433
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgressDrawable:Lcom/vkcoffee/android/ui/RadialProgressDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->setProgress(FZ)V

    .line 434
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mGifLabel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mError:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    return-void
.end method

.method public showInitialLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->wasPlayed:Z

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mGifLabel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mError:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgressDrawable:Lcom/vkcoffee/android/ui/RadialProgressDrawable;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->setThickness(F)V

    .line 401
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 402
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgressDrawable:Lcom/vkcoffee/android/ui/RadialProgressDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->setProgress(FZ)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->showDone()V

    goto :goto_0
.end method

.method public showProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mGifLabel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mError:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgressDrawable:Lcom/vkcoffee/android/ui/RadialProgressDrawable;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->setThickness(F)V

    .line 414
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mProgressDrawable:Lcom/vkcoffee/android/ui/RadialProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->setProgress(FZ)V

    .line 415
    return-void
.end method

.method public start(Z)V
    .locals 5
    .param p1, "autoplay"    # Z

    .prologue
    const/4 v4, 0x1

    .line 440
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    invoke-virtual {v0}, Lcom/vkcoffee/android/background/AsyncTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ViewImageLoader;->cancel(Landroid/view/View;)V

    .line 444
    iput-boolean v4, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->triedToLoad:Z

    .line 445
    new-instance v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;-><init>(Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;Z)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/DocumentAttachment;->video:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    .line 548
    invoke-virtual {v2}, Lcom/vkcoffee/android/attachments/DocumentAttachment;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->execPool([Ljava/lang/Object;)Lcom/vkcoffee/android/background/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 552
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    invoke-virtual {v0}, Lcom/vkcoffee/android/background/AsyncTask;->cancel()V

    .line 554
    iput-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->recycle()V

    .line 558
    iput-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->showInitialLayout()V

    .line 561
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 562
    return-void
.end method
