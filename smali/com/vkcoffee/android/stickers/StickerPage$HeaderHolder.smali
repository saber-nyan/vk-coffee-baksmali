.class Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "StickerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/StickerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderHolder"
.end annotation


# static fields
.field private static final ID:I = -0x1


# instance fields
.field private mActionCallback:Landroid/view/View$OnClickListener;

.field private mError:Landroid/view/View;

.field private mItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

.field private mOkButton:Landroid/view/View;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mStickerButton:Landroid/widget/TextView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/stickers/StickerPage;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/stickers/StickerPage;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 238
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    .line 239
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030174

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 230
    invoke-static {p0}, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mActionCallback:Landroid/view/View$OnClickListener;

    .line 241
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mRoot:Landroid/widget/RelativeLayout;

    .line 242
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mRoot:Landroid/widget/RelativeLayout;

    const v2, 0x7f1003c2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mStickerButton:Landroid/widget/TextView;

    .line 243
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mRoot:Landroid/widget/RelativeLayout;

    const v2, 0x7f1003c4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mOkButton:Landroid/view/View;

    .line 244
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mRoot:Landroid/widget/RelativeLayout;

    const v2, 0x7f1003c3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mProgress:Landroid/widget/ProgressBar;

    .line 245
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mRoot:Landroid/widget/RelativeLayout;

    const v2, 0x7f1003c5

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mError:Landroid/view/View;

    .line 246
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mRoot:Landroid/widget/RelativeLayout;

    const v2, 0x7f1000dd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mTitle:Landroid/widget/TextView;

    .line 247
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mRoot:Landroid/widget/RelativeLayout;

    const v2, 0x7f100169

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mSubtitle:Landroid/widget/TextView;

    .line 249
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mStickerButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mActionCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;-><init>(Z)V

    .line 252
    .local v0, "pd":Lcom/vkcoffee/android/ui/CircularProgressDrawable;
    const v1, -0xae7e48

    invoke-virtual {v0, v4, v1}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setColors(II)V

    .line 253
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setThickness(F)V

    .line 254
    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setPad(Z)V

    .line 255
    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setDimBackground(Z)V

    .line 256
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 4
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 264
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mStickerButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mOkButton:Landroid/view/View;

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mProgress:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->mError:Landroid/view/View;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->bindButtons(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/View;)V

    .line 265
    return-void
.end method

.method synthetic lambda$new$696(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickerPage;->access$000(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    const-string/jumbo v1, "keyboard"

    iput-object v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->referrer:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickerPage;->access$200(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/data/PurchasesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v1}, Lcom/vkcoffee/android/stickers/StickerPage;->access$000(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v1

    invoke-static {p0}, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;)Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/PurchasesManager;->purchase(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V

    .line 236
    return-void
.end method

.method synthetic lambda$null$695(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 1
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickerPage;->access$300(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vkcoffee/android/StickerDownloaderService;->download(Landroid/content/Context;Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickerPage;->reload(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 235
    return-void
.end method
