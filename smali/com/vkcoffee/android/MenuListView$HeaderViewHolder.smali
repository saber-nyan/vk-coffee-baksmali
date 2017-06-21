.class Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;
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
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field private blurredPhoto:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private padder:Landroid/view/View;

.field private photo:Landroid/widget/ImageView;

.field private search2:Landroid/widget/ImageView;

.field private status:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 6

    .prologue
    const v5, 0x7f10026a

    .line 420
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 421
    invoke-virtual {p1}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0300b9

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 413
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f100267

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->blurredPhoto:Landroid/widget/ImageView;

    .line 414
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f100106

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->name:Landroid/widget/TextView;

    .line 415
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f100266

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->padder:Landroid/view/View;

    .line 416
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f100105

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->photo:Landroid/widget/ImageView;

    .line 418
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f100269

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->status:Landroid/widget/TextView;

    .line 423
    new-instance v0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$1;-><init>(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)V

    .line 430
    .local v0, "searchClickListener":Landroid/view/View$OnClickListener;
    new-instance v1, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$2;-><init>(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)V

    .line 437
    .local v1, "searchLongClickListener":Landroid/view/View$OnLongClickListener;
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 439
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f10026b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->search2:Landroid/widget/ImageView;

    .line 440
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->search2:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->search2:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->search2:Landroid/widget/ImageView;

    new-instance v3, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p1}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020312

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, -0x5b554f

    invoke-direct {v3, v4, v5}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    :cond_0
    invoke-static {p1, p0}, Lcom/vkcoffee/android/MenuListView;->access$17(Lcom/vkcoffee/android/MenuListView;Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)V

    .line 446
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->blurredPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->photo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->status:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->search2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Lcom/vkcoffee/android/MenuListView;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    return-object v0
.end method


# virtual methods
.method public bind()V
    .locals 6

    .prologue
    .line 449
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->padder:Landroid/view/View;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v5}, Lcom/vkcoffee/android/MenuListView;->access$18(Lcom/vkcoffee/android/MenuListView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$19(Lcom/vkcoffee/android/MenuListView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->status:Landroid/widget/TextView;

    .line 452
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$20(Lcom/vkcoffee/android/MenuListView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$20(Lcom/vkcoffee/android/MenuListView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string v0, ""

    .line 453
    .local v0, "string":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    return-void

    .line 452
    .end local v0    # "string":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$20(Lcom/vkcoffee/android/MenuListView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->photo:Landroid/widget/ImageView;

    const v1, 0x7f0202c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 481
    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 484
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/vkcoffee/android/MenuListView$Listener;->onMenuItemSelected(IZ)V

    .line 487
    :cond_0
    return-void
.end method

.method public onLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 490
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/MenuListView$Listener;->onMenuItemSelected(IZ)V

    .line 493
    :cond_0
    return v2
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 458
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->blurredPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;

    invoke-direct {v1, p0, p2}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;-><init>(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 475
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 477
    :cond_0
    return-void
.end method
