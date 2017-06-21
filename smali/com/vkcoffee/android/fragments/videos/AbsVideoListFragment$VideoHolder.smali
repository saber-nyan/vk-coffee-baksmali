.class Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "AbsVideoListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field private mData:Lcom/vkcoffee/android/api/VideoFile;

.field private final mDuration:Landroid/widget/TextView;

.field private final mInfo:Landroid/widget/TextView;

.field private final mOptions:Landroid/view/View;

.field private final mPhoto:Landroid/widget/ImageView;

.field private final mSubtitle:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    .line 337
    const v0, 0x7f030197

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 338
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mTitle:Landroid/widget/TextView;

    .line 339
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mSubtitle:Landroid/widget/TextView;

    .line 340
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mInfo:Landroid/widget/TextView;

    .line 341
    const v0, 0x7f1003f9

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mDuration:Landroid/widget/TextView;

    .line 342
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mPhoto:Landroid/widget/ImageView;

    .line 343
    const v0, 0x7f1003f5

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mOptions:Landroid/view/View;

    .line 344
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mOptions:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 10
    .param p1, "item"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    const/16 v2, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 350
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mData:Lcom/vkcoffee/android/api/VideoFile;

    .line 351
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/api/VideoFile;->ownerName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mInfo:Landroid/widget/TextView;

    iget v0, p1, Lcom/vkcoffee/android/api/VideoFile;->views:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e004a

    iget v5, p1, Lcom/vkcoffee/android/api/VideoFile;->views:I

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p1, Lcom/vkcoffee/android/api/VideoFile;->views:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mDuration:Landroid/widget/TextView;

    iget v0, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    const/16 v4, 0xe10

    if-le v0, v4, :cond_1

    const-string/jumbo v0, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    div-int/lit16 v5, v5, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v5, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    rem-int/lit16 v5, v5, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget v5, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mDuration:Landroid/widget/TextView;

    iget v0, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mOptions:Landroid/view/View;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    iget-boolean v3, v3, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mSelectMode:Z

    if-nez v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802ff

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_1
    const-string/jumbo v0, "%d:%02d"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v5, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 355
    goto :goto_2

    :cond_3
    move v1, v2

    .line 356
    goto :goto_3
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 325
    check-cast p1, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->bind(Lcom/vkcoffee/android/api/VideoFile;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f02023f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 363
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->itemView:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mData:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->onItemClick(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mOptions:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 376
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 377
    .local v0, "pm":Landroid/support/v7/widget/PopupMenu;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mData:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->onCreatePopupMenu(Lcom/vkcoffee/android/api/VideoFile;Landroid/view/Menu;)V

    .line 378
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 379
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mData:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->onPopupItemSelected(Lcom/vkcoffee/android/api/VideoFile;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    return-void
.end method
