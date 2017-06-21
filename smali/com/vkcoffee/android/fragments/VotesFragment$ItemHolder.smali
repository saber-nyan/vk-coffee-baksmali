.class Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;
.super Ljava/lang/Object;
.source "VotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/VotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation


# instance fields
.field private mButton:Landroid/widget/TextView;

.field private mClickHandler:Landroid/view/View$OnClickListener;

.field private mData:Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;

.field private mRoot:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/VotesFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/VotesFragment;)V
    .locals 1

    .prologue
    .line 263
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1;-><init>(Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mClickHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/VotesFragment;Lcom/vkcoffee/android/fragments/VotesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/VotesFragment$1;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;-><init>(Lcom/vkcoffee/android/fragments/VotesFragment;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;)Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mData:Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;

    return-object v0
.end method


# virtual methods
.method public inflate(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mRoot:Landroid/view/View;

    .line 283
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f1000dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mTitle:Landroid/widget/TextView;

    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f10021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mButton:Landroid/widget/TextView;

    .line 285
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 287
    return-object p0
.end method

.method public setData(Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "data"    # Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;
    .param p2, "maxTextLen"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mData:Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;

    .line 292
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 295
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->mRoot:Landroid/view/View;

    return-object v0
.end method
