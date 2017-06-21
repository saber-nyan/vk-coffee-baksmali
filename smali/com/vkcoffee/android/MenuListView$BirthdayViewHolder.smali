.class Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "MenuListView.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BirthdayViewHolder"
.end annotation


# instance fields
.field private counter:Landroid/widget/TextView;

.field private counter2:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageView;

.field private photos:Lcom/vkcoffee/android/ui/PhotoStripView;

.field private text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 5

    .prologue
    .line 335
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 336
    invoke-virtual {p1}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300b8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100260

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->icon:Landroid/widget/ImageView;

    .line 337
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p1}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020188

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->text:Landroid/widget/TextView;

    .line 339
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->counter:Landroid/widget/TextView;

    .line 340
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->counter2:Landroid/widget/TextView;

    .line 341
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/PhotoStripView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    .line 342
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setPadding(I)V

    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-static {p0}, Lcom/vkcoffee/android/MenuListView$MenuListView$BirthdayViewHolder$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;)Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setListener(Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;)V

    .line 344
    return-void
.end method


# virtual methods
.method public applyExpansion()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 391
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->icon:Landroid/widget/ImageView;

    const/high16 v3, -0x3e400000    # -24.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v4}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v4

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 392
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/high16 v3, -0x3db00000    # -52.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v4}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v4

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/PhotoStripView;->setTranslationX(F)V

    .line 393
    const v2, 0x3f333333    # 0.7f

    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 394
    .local v1, "scale":F
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setScaleX(F)V

    .line 395
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setScaleY(F)V

    .line 396
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/PhotoStripView;->setOverlapOffset(F)V

    .line 397
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v3

    sub-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v5

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 398
    .local v0, "ba":I
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmapAlpha(II)V

    .line 399
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmapAlpha(II)V

    .line 400
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->counter2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v3

    const v4, 0x3e4ccccd    # 0.2f

    div-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v6, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 401
    return-void
.end method

.method public bind()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 351
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setCount(I)V

    .line 352
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$7(Lcom/vkcoffee/android/MenuListView;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$13(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$MenuAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->bindViewHolder(Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;I)V

    .line 353
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->text:Landroid/widget/TextView;

    invoke-static {}, Lcom/vkcoffee/android/MenuListView;->access$14()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_0
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 358
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->counter2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->counter2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    .line 364
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->counter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->counter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->applyExpansion()V

    .line 371
    :cond_1
    return-void

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->counter2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->counter:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 383
    return-void
.end method

.method lambda$new$620(Lcom/vkcoffee/android/ui/PhotoStripView;I)V
    .locals 2
    .param p1, "view"    # Lcom/vkcoffee/android/ui/PhotoStripView;
    .param p2, "index"    # I

    .prologue
    .line 347
    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 348
    return-void
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    const v1, -0x77359400

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/MenuListView$Listener;->onMenuItemSelected(IZ)V

    .line 375
    return-void
.end method

.method public onLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 386
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    const v1, -0x77359400

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/MenuListView$Listener;->onMenuItemSelected(IZ)V

    .line 387
    return v2
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 379
    return-void
.end method
