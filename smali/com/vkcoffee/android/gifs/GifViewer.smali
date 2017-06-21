.class public Lcom/vkcoffee/android/gifs/GifViewer;
.super Lcom/vkcoffee/android/gifs/VKWindow;
.source "GifViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$1;,
        Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$2;,
        Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$2$1$$Lambda$1;,
        Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$3$$Lambda$1;,
        Lcom/vkcoffee/android/gifs/GifViewer$Provider;
    }
.end annotation


# static fields
.field static final sGifs:Lcom/vkcoffee/android/cache/Gifs;


# instance fields
.field ignoreCache:Z

.field mAccessKey:Ljava/lang/String;

.field mAddButton:Landroid/widget/ImageView;

.field mDocumentId:I

.field mDragView:Landroid/view/View;

.field mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

.field mErrorLayout:Landroid/view/View;

.field mExtension:Ljava/lang/String;

.field mHeight:I

.field mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

.field mOwnerId:I

.field mPreview:Landroid/graphics/Bitmap;

.field mProgress:Lcom/vkcoffee/android/ui/CircularProgressBar;

.field mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mRootView:Lcom/vkcoffee/android/gifs/GifRootLayout;

.field mShareButton:Landroid/view/View;

.field mSize:I

.field mTask:Lcom/vkcoffee/android/background/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/background/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field mThumb:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mToolbar:Landroid/support/v7/widget/Toolbar;

.field mUrl:Ljava/lang/String;

.field mVideo:Ljava/lang/String;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/vkcoffee/android/cache/Gifs;->get()Lcom/vkcoffee/android/cache/Gifs;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/gifs/GifViewer;->sGifs:Lcom/vkcoffee/android/cache/Gifs;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    const v0, 0x7f030095

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/gifs/VKWindow;-><init>(Landroid/app/Activity;I)V

    .line 146
    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/vkcoffee/android/api/Document;)Lcom/vkcoffee/android/gifs/GifViewer;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "attachment"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 128
    new-instance v0, Lcom/vkcoffee/android/gifs/GifViewer;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifViewer;-><init>(Landroid/app/Activity;)V

    .line 129
    .local v0, "viewer":Lcom/vkcoffee/android/gifs/GifViewer;
    iget-object v1, p1, Lcom/vkcoffee/android/api/Document;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mTitle:Ljava/lang/String;

    .line 130
    iget-object v1, p1, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mUrl:Ljava/lang/String;

    .line 131
    iget-object v1, p1, Lcom/vkcoffee/android/api/Document;->video:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mVideo:Ljava/lang/String;

    .line 132
    iget v1, p1, Lcom/vkcoffee/android/api/Document;->width:I

    iput v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mWidth:I

    .line 133
    iget v1, p1, Lcom/vkcoffee/android/api/Document;->height:I

    iput v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mHeight:I

    .line 134
    iget v1, p1, Lcom/vkcoffee/android/api/Document;->oid:I

    iput v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mOwnerId:I

    .line 135
    iget v1, p1, Lcom/vkcoffee/android/api/Document;->did:I

    iput v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDocumentId:I

    .line 136
    iget-object v1, p1, Lcom/vkcoffee/android/api/Document;->access_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mAccessKey:Ljava/lang/String;

    .line 137
    iget v1, p1, Lcom/vkcoffee/android/api/Document;->size:I

    iput v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mSize:I

    .line 138
    iget-object v1, p1, Lcom/vkcoffee/android/api/Document;->thumb:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mThumb:Ljava/lang/String;

    .line 139
    iget-object v1, p1, Lcom/vkcoffee/android/api/Document;->ext:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mExtension:Ljava/lang/String;

    .line 140
    invoke-virtual {v0}, Lcom/vkcoffee/android/gifs/GifViewer;->show()V

    .line 141
    return-object v0
.end method

.method public static start(Landroid/app/Activity;Lcom/vkcoffee/android/attachments/DocumentAttachment;Lcom/vkcoffee/android/gifs/GifViewer$Provider;Z)Lcom/vkcoffee/android/gifs/GifViewer;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "attachment"    # Lcom/vkcoffee/android/attachments/DocumentAttachment;
    .param p2, "provider"    # Lcom/vkcoffee/android/gifs/GifViewer$Provider;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "ignoreCache"    # Z

    .prologue
    .line 109
    new-instance v0, Lcom/vkcoffee/android/gifs/GifViewer;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifViewer;-><init>(Landroid/app/Activity;)V

    .line 110
    .local v0, "viewer":Lcom/vkcoffee/android/gifs/GifViewer;
    iget-object v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mTitle:Ljava/lang/String;

    .line 111
    iget-object v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mUrl:Ljava/lang/String;

    .line 112
    iget-object v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->video:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mVideo:Ljava/lang/String;

    .line 113
    iget v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->width:I

    iput v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mWidth:I

    .line 114
    iget v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->height:I

    iput v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mHeight:I

    .line 115
    iget v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->oid:I

    iput v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mOwnerId:I

    .line 116
    iget v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->did:I

    iput v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDocumentId:I

    .line 117
    iget-object v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->access_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mAccessKey:Ljava/lang/String;

    .line 118
    iget v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->size:I

    iput v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mSize:I

    .line 119
    iget-object v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mThumb:Ljava/lang/String;

    .line 120
    iget-object v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->extension:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mExtension:Ljava/lang/String;

    .line 121
    iput-object p2, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    .line 122
    iput-boolean p3, v0, Lcom/vkcoffee/android/gifs/GifViewer;->ignoreCache:Z

    .line 123
    invoke-virtual {v0}, Lcom/vkcoffee/android/gifs/GifViewer;->show()V

    .line 124
    return-object v0
.end method

.method public static start(Landroid/app/Activity;Lcom/vkcoffee/android/attachments/DocumentAttachment;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "attachment"    # Lcom/vkcoffee/android/attachments/DocumentAttachment;

    .prologue
    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/vkcoffee/android/gifs/GifViewer;->start(Landroid/app/Activity;Lcom/vkcoffee/android/attachments/DocumentAttachment;Lcom/vkcoffee/android/gifs/GifViewer$Provider;Z)Lcom/vkcoffee/android/gifs/GifViewer;

    .line 106
    return-void
.end method


# virtual methods
.method add()V
    .locals 4

    .prologue
    .line 609
    new-instance v0, Lcom/vkcoffee/android/api/docs/DocsAdd;

    iget v1, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mOwnerId:I

    iget v2, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDocumentId:I

    iget-object v3, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mAccessKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/api/docs/DocsAdd;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/docs/DocsAdd;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/gifs/GifViewer$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/gifs/GifViewer$4;-><init>(Lcom/vkcoffee/android/gifs/GifViewer;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 618
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 619
    return-void
.end method

.method animateIn()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/gifs/GifViewer$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/gifs/GifViewer$1;-><init>(Lcom/vkcoffee/android/gifs/GifViewer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 309
    return-void
.end method

.method animateOut(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->clearAnimation()V

    .line 313
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/gifs/GifViewer$2;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/gifs/GifViewer$2;-><init>(Lcom/vkcoffee/android/gifs/GifViewer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 371
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mPreview:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 653
    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/gifs/VKWindow;->finish()V

    .line 657
    :goto_0
    return-void

    .line 655
    :cond_1
    invoke-static {p0}, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/gifs/GifViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifViewer;->animateOut(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public finishWithoutAnimation()V
    .locals 0

    .prologue
    .line 676
    invoke-super {p0}, Lcom/vkcoffee/android/gifs/VKWindow;->finish()V

    .line 677
    return-void
.end method

.method public getClipTopBottom()[I
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    invoke-interface {v0}, Lcom/vkcoffee/android/gifs/GifViewer$Provider;->getClipTopBottom()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewLocation()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    invoke-interface {v0}, Lcom/vkcoffee/android/gifs/GifViewer$Provider;->getViewLocation()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviewLocationData()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    invoke-interface {v0}, Lcom/vkcoffee/android/gifs/GifViewer$Provider;->hasPreviewLocationData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method invalidateMenu()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/gifs/GifViewer;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 248
    return-void
.end method

.method lambda$MR$finish$finish$c53375c$1()V
    .locals 0

    .prologue
    .line 660
    invoke-super {p0}, Lcom/vkcoffee/android/gifs/VKWindow;->finish()V

    .line 661
    return-void
.end method

.method lambda$onPostExecute$638(Lcom/vkontakte/android/ui/animation/MovieDrawable;)V
    .locals 3
    .param p1, "drawable"    # Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {p1}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageRatio(F)V

    .line 603
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    sget-object v0, Lcom/vkcoffee/android/gifs/GifViewer;->sGifs:Lcom/vkcoffee/android/cache/Gifs;

    iget v1, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDocumentId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/cache/Gifs;->trackPlayEvent(IZ)V

    .line 605
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->invalidateMenu()V

    .line 606
    return-void
.end method

.method obtainData()V
    .locals 4

    .prologue
    .line 479
    new-instance v1, Lcom/vkcoffee/android/gifs/GifViewer$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/gifs/GifViewer$3;-><init>(Lcom/vkcoffee/android/gifs/GifViewer;)V

    .line 591
    .local v1, "var2":Lcom/vkcoffee/android/background/AsyncTask;, "Lcom/vkcoffee/android/background/AsyncTask<Ljava/lang/String;Ljava/lang/Integer;Lcom/vkontakte/android/ui/animation/MovieDrawable;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mVideo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mUrl:Ljava/lang/String;

    .line 597
    .local v0, "var1":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/background/AsyncTask;->execPool([Ljava/lang/Object;)Lcom/vkcoffee/android/background/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    .line 598
    return-void

    .line 594
    .end local v0    # "var1":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mVideo:Ljava/lang/String;

    .restart local v0    # "var1":Ljava/lang/String;
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 199
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->finish()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 179
    :sswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->add()V

    goto :goto_0

    .line 182
    :sswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->stop()V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->start()V

    goto :goto_0

    .line 193
    :sswitch_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->obtainData()V

    goto :goto_0

    .line 196
    :sswitch_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->showShareDialog()V

    goto :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000a2 -> :sswitch_0
        0x7f1000d9 -> :sswitch_1
        0x7f10010b -> :sswitch_2
        0x7f100219 -> :sswitch_3
    .end sparse-switch
.end method

.method onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-eqz v0, :cond_0

    .line 252
    const v0, 0x7f10044b

    const v1, 0x7f080451

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 254
    :cond_0
    return-void
.end method

.method public onCreateWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 149
    const/4 v4, 0x0

    .line 150
    .local v4, "windowFlags":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 151
    const v4, -0x7ffeff00

    .line 155
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/4 v5, 0x1

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    return-object v0

    .line 152
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 153
    const v4, 0xc010100

    goto :goto_0
.end method

.method onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f10044b

    if-ne v0, v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->saveGif()V

    .line 242
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/vkcoffee/android/gifs/VKWindow;->onViewCreated(Landroid/view/View;)V

    .line 160
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->setupUI()V

    .line 161
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->obtainData()V

    .line 164
    :cond_0
    return-void
.end method

.method public onViewDestroyed()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/vkcoffee/android/gifs/VKWindow;->onViewDestroyed()V

    .line 168
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->recycle()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mTask:Lcom/vkcoffee/android/background/AsyncTask;

    invoke-virtual {v0}, Lcom/vkcoffee/android/background/AsyncTask;->cancel()V

    .line 174
    :cond_1
    return-void
.end method

.method saveGif()V
    .locals 6

    .prologue
    .line 636
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "VK"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 637
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 638
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 640
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mVideo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mUrl:Ljava/lang/String;

    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 641
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 642
    .local v2, "request":Landroid/app/DownloadManager$Request;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 643
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 644
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 645
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "download"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 646
    .local v1, "mgr":Landroid/app/DownloadManager;
    if-eqz v1, :cond_1

    .line 647
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 649
    :cond_1
    return-void

    .line 640
    .end local v1    # "mgr":Landroid/app/DownloadManager;
    .end local v2    # "request":Landroid/app/DownloadManager$Request;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mVideo:Ljava/lang/String;

    goto :goto_0
.end method

.method setAddVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 374
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mAddButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 375
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 376
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mAddButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f020121

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    return-void

    .line 374
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0

    .line 376
    :cond_1
    const v0, 0x7f020113

    goto :goto_1
.end method

.method setupUI()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 206
    const v0, 0x7f100144

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifViewer;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/CircularProgressBar;

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mProgress:Lcom/vkcoffee/android/ui/CircularProgressBar;

    .line 207
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifViewer;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/RatioImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    .line 208
    const v0, 0x7f100217

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifViewer;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    .line 209
    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifViewer;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mErrorLayout:Landroid/view/View;

    .line 210
    const v0, 0x7f1000a2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifViewer;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mAddButton:Landroid/widget/ImageView;

    .line 211
    const v0, 0x7f100219

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifViewer;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mShareButton:Landroid/view/View;

    .line 212
    const v0, 0x7f100216

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifViewer;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/gifs/GifRootLayout;

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mRootView:Lcom/vkcoffee/android/gifs/GifRootLayout;

    .line 213
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mErrorLayout:Landroid/view/View;

    const v2, 0x7f10010a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mErrorLayout:Landroid/view/View;

    const v2, 0x7f10010b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mShareButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mOwnerId:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifViewer;->setAddVisibility(Z)V

    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setOrientation(I)V

    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mRootView:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setNavigationProvider(Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;)V

    .line 221
    const v0, 0x7f100112

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifViewer;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 222
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c0187

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 226
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {p0}, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/gifs/GifViewer;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 227
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->invalidateMenu()V

    .line 228
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    invoke-interface {v0}, Lcom/vkcoffee/android/gifs/GifViewer$Provider;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mPreview:Landroid/graphics/Bitmap;

    .line 230
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageRatio(F)V

    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->animateIn()V

    .line 236
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 218
    goto :goto_0
.end method

.method showShareDialog()V
    .locals 14

    .prologue
    .line 622
    new-instance v12, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v12}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 623
    .local v12, "e":Lcom/vkcoffee/android/NewsEntry;
    new-instance v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mUrl:Ljava/lang/String;

    iget v3, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mSize:I

    iget-object v4, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mThumb:Ljava/lang/String;

    iget v5, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mOwnerId:I

    iget v6, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mDocumentId:I

    iget-object v7, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mExtension:Ljava/lang/String;

    iget-object v8, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mVideo:Ljava/lang/String;

    iget v9, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mWidth:I

    iget v10, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mHeight:I

    iget-object v11, p0, Lcom/vkcoffee/android/gifs/GifViewer;->mAccessKey:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lcom/vkcoffee/android/attachments/DocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 624
    .local v0, "attachment":Lcom/vkcoffee/android/attachments/DocumentAttachment;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v12, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 625
    const/16 v1, 0x10

    iput v1, v12, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 626
    iget-object v1, v12, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    iget v1, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->oid:I

    iput v1, v12, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 628
    iget v1, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->did:I

    iput v1, v12, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 629
    new-instance v13, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/RepostActivity;

    invoke-direct {v13, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 630
    .local v13, "intent":Landroid/content/Intent;
    const-string v1, "post"

    invoke-virtual {v13, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 631
    const-string v1, "new_post"

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 632
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifViewer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 633
    return-void
.end method
