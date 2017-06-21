.class public Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "SegmenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/base/SegmenterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FooterHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/util/Segmenter$Footer;",
        ">;"
    }
.end annotation


# instance fields
.field private mError:Landroid/view/ViewGroup;

.field private mErrorRetry:Landroid/view/View;

.field private mErrorText:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 333
    const v0, 0x7f03001e

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 334
    const v0, 0x7f10010c

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mProgress:Landroid/widget/ProgressBar;

    .line 335
    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mError:Landroid/view/ViewGroup;

    .line 336
    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mErrorText:Landroid/widget/TextView;

    .line 337
    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mErrorRetry:Landroid/view/View;

    .line 338
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->showProgress()V

    .line 339
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/util/Segmenter$Footer;)V
    .locals 4
    .param p1, "item"    # Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 350
    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->getState()Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$1;->$SwitchMap$com$vkontakte$android$ui$util$Segmenter$Footer$State:[I

    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->getState()Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 353
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->showProgress()V

    goto :goto_0

    .line 357
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mError:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mErrorRetry:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 365
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mError:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mErrorRetry:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 325
    check-cast p1, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->bind(Lcom/vkcoffee/android/ui/util/Segmenter$Footer;)V

    return-void
.end method

.method showProgress()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 342
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mError:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->mErrorRetry:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    return-void
.end method
